# Build Debian packages in a Docker container
# Copyright (c) 2017-2019 Davide Madrisan <davide.madrisan@gmail.com>
#
# Usage:
#    make package DISTRO=debian9-go1.12 PKG=vault
#    make package DISTRO=debian10 PKG=vault COMPOSE=/usr/local/bin/podman-compose
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
#    DISTRO: debian9

COMPOSE := $(shell command -v docker-compose 2>/dev/null)

ifeq "$(notdir $(COMPOSE))" "docker-compose"
    COMPÖSE_BINARY = $(shell command -v docker-compose 2>/dev/null)
    SUDO = sudo
else ifeq "$(notdir $(COMPOSE))" "podman-compose"
    COMPÖSE_BINARY = $(shell command -v podman-compose 2>/dev/null)
    SUDO =
else
    $(error "only docker-compose and podman-compose are supported")
endif

ifndef COMPÖSE_BINARY
    $(error "please install $(notdir $(COMPOSE)) or adjust the PATH environment")
endif

DISTRO := debian9-go1.12
# We set 'TMPDIR' to work-around the execution error:
#    /usr/local/bin/docker-compose: \
#      error while loading shared libraries: libz.so.1: \
#      failed to map segment from shared object
# that occurs when /tmp is mounted with the 'noexec' flag
ENV := TMPDIR=/var/tmp

PACKAGES := $(notdir $(wildcard $(DISTRO)/data/*))
ifdef PKG
PACKAGES := $(PKG)
endif

dockerbuild: $(COMPOSE_BINARY)
ifeq "$(notdir $(COMPOSE))" "docker-compose"
	@sudo $(ENV) $(COMPÖSE_BINARY) build $(DISTRO)
else ifeq "$(notdir $(COMPOSE))" "podman-compose"
	$(ENV) $(COMPÖSE_BINARY) build $(DISTRO)
endif

package: dockerbuild
	@export TMPDIR=/var/tmp
	@for pkg in $(PACKAGES); do \
	   $(SUDO) $(ENV) $(COMPÖSE_BINARY) run --rm $(DISTRO) $$pkg; \
	done

.PHONY : dockerbuild package
