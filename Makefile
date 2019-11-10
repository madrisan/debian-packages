# Build Debian packages in Docker or PodMan containers
# Copyright (c) 2017-2019 Davide Madrisan <davide.madrisan@gmail.com>
#
# Usage:
#    make package DISTRO=debian9-go1.12.12 PKG=vault
#    make package DISTRO=debian9-go1.12.12 PKG=vault COMPOSE=podman-compose
#    make package DISTRO=debian10 PKG=vault
#    make package DISTRO=debian10 PKG=vault COMPOSE=podman-compose
#    make package PKG=consul
#    make package PKG=docker-compose
#    make package PKG=docker-py
#    make package PKG=dockerpy-creds
#    make package PKG=py-zabbix
#    make package PKG=pyvmomi
#    make package PKG=redis4
#    make package DISTRO=debian10 PKG=salt
#
# Default values:
#    COMPOSE: docker-compose
#    DISTRO: debian10

COMPOSE := $(shell command -v docker-compose 2>/dev/null)

ifeq "$(notdir $(COMPOSE))" "docker-compose"
    COMPOSE_BINARY = $(shell command -v docker-compose 2>/dev/null)
    CONTAINER_ENGINE = docker
    SUDO = sudo
else ifeq "$(notdir $(COMPOSE))" "podman-compose"
    COMPOSE_BINARY = $(shell command -v podman-compose 2>/dev/null)
    CONTAINER_ENGINE = podman
    SUDO =
else
    $(error "only docker-compose and podman-compose are supported")
endif

ifeq ($(COMPOSE_BINARY),)
    $(error "please install $(notdir $(COMPOSE)) or adjust the PATH environment")
endif
CONTAINER_ENGINE_BINARY = $(shell command -v $(CONTAINER_ENGINE) 2>/dev/null)
ifeq ($(CONTAINER_ENGINE_BINARY),)
    $(error "cannot find the $(CONTAINER_ENGINE) binary")
endif

DISTRO := debian10
# We set 'TMPDIR' to work-around the execution error:
#    /usr/local/bin/docker-compose: \
#      error while loading shared libraries: libz.so.1: \
#      failed to map segment from shared object
# that occurs when /tmp is mounted with the 'noexec' flag
ENV := TMPDIR=/var/tmp
OUTPUTDIR = output/$(DISTRO)

PACKAGES := $(notdir $(wildcard $(DISTRO)/data/*))
ifdef PKG
PACKAGES := $(PKG)
endif

dockerbuild: $(COMPOSE_BINARY)
	@mkdir -p $(OUTPUTDIR)
	$(SUDO) $(ENV) $(COMPOSE_BINARY) -f docker-compose-$(DISTRO).yml build

package: dockerbuild
	@export TMPDIR=/var/tmp
	@for pkg in $(PACKAGES); do \
	   $(SUDO) $(ENV) $(COMPOSE_BINARY) -f docker-compose-$(DISTRO).yml run --rm $(DISTRO) $$pkg; \
	done

.PHONY : dockerbuild package
