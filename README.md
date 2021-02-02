[![License](https://img.shields.io/badge/License-Apache--2.0-blue.svg)](https://spdx.org/licenses/Apache-2.0.html)

# Debian Packages

## Supported packages

![](images/HashiCorp-Vault-logo.png?raw=true "HashiCorp Vault")

#### HashiCorp Vault - version 1.5.7

_A Tool for Managing Secrets_.

* Official website: https://www.vaultproject.io
* Git repository: https://github.com/hashicorp/vault

* Debian source package:
  * [[vault_1.5.7-1.dsc]][vault-dsc]
  * [[vault_1.5.7.orig.tar.gz]][vault-orig]
  * [[vault_1.5.7-1.debian.tar.xz]][vault-debian]

* Debian 9 (Stretch) binary packages:
  * [[vault_1.5.7-1_amd64.deb]][vault-debpkg]
  * [[vault-server_1.5.7-1_amd64.deb]][vault-server-debpkg]

* Debian 10 (Buster) binary packages:
  * version 1.5.7
    * [[vault_1.5.7-1_amd64.deb]][vault-debpkg-deb10]
    * [[vault-server_1.5.7-1_amd64.deb]][vault-server-debpkg-deb10]
---

![](images/HashiCorp-Consul-logo.png?raw=true "HashiCorp Consul")

#### HashiCorp Consul - version 1.6.1

_Service Discovery and Configuration Made Easy_.

* Official website: https://www.consul.io
* Git repository: https://github.com/hashicorp/consul

* Debian source package:
  * [[consul_1.6.1-1.dsc]][consul-dsc]
  * [[consul_1.6.1.orig.tar.gz]][consul-orig]
  * [[consul_1.6.1-1.debian.tar.xz]][consul-debian]

* Debian 9 (Stretch) binary package:
  * [[consul_1.6.1-1_amd64.deb]][consul-debpkg]

---

![Docker Compose](https://github.com/docker/compose/blob/master/logo.png?raw=true "Docker Compose Logo")

#### Docker Compose - version 1.19.0 :boom: alpha

_Define and run multi-container applications with Docker_

* Official website: https://docs.docker.com/compose/overview/
* Git repository: https://github.com/docker/compose/

* Debian source package:
  * [[docker-compose_1.19.0-1.dsc]][docker-compose-dsc]
  * [[docker-compose_1.19.0.orig.tar.gz]][docker-compose-orig]
  * [[docker-compose_1.19.0-1.debian.tar.xz]][docker-compose-debian]

* Debian 9 (Stretch) binary package:
  * [[docker-compose_1.19.0-1_amd64.deb]][docker-compose-debpkg]

The binary package will install the executable `/usr/bin/docker-compose`, created by
[PyInstaller][pyinstaller]. This should increase the portability of the Debian package
because no extra Python libraries need to be installed.

---

![Python packages](https://www.python.org/static/community_logos/python-logo.png?raw=true "Python Logo")

#### dockerpy-creds - version 0.2.2

_Python bindings for the docker credentials store API_

* Official website: https://docs.docker.com/engine/reference/commandline/login/#/credentials-store
* Git repository: https://github.com/shin-/dockerpy-creds

* Debian source package:
  * [[docker-pycreds_0.2.2-1.dsc]][dockerpy-creds-dsc]
  * [[docker-pycreds_0.2.2.orig.tar.gz]][dockerpy-creds-orig]
  * [[docker-pycreds_0.2.2-1.debian.tar.xz]][dockerpy-creds-debian]

* Debian 9 (Stretch) binary package:
  * [[python-dockerpycreds_0.2.2-1_all.deb]][python-dockerpy-creds-debpkg]
  * [[python3-dockerpycreds_0.2.2-1_all.deb]][python3-dockerpy-creds-debpkg]

#### docker-py - version 3.4.1

_Docker SDK for Python_

* Official website: https://docker-py.readthedocs.io/en/stable/
* Git repository: https://github.com/docker/docker-py

* Debian source package:
  * [[docker-py_3.4.1-2.dsc]][docker-py-dsc]
  * [[docker-py_3.4.1.orig.tar.gz]][docker-py-orig]
  * [[docker-py_3.4.1-2.debian.tar.xz]][docker-py-debian]

* Debian 9 (Stretch) binary package:
  * [[python-docker_3.4.1-2_all.deb]][python-docker-debpkg]
  * [[python3-docker_3.4.1-2_all.deb]][python3-docker-debpkg]

#### py-zabbix - version 1.1.3

_Python modules for work with zabbix_

* Official website: https://py-zabbix.readthedocs.io/en/latest/
* Git repository: https://github.com/adubkov/py-zabbix

* Debian source package:
  * [[py-zabbix_1.1.3-1.dsc]][py-zabbix-dsc]
  * [[py-zabbix_1.1.3.orig.tar.gz]][py-zabbix-orig]
  * [[py-zabbix_1.1.3-1.debian.tar.xz]][py-zabbix-debian]

* Debian 9 (Stretch) binary package:
  * [[python-pyzabbix_1.1.3-1_all.deb]][python-zabbix-debpkg]
  * [[python3-pyzabbix_1.1.3-1_all.deb]][python3-zabbix-debpkg]

---

![py-pyvmomi](https://upload.wikimedia.org/wikipedia/commons/9/9a/Vmware.svg "VMWare Logo")

#### pyvmomi - version 6.0.0.2016.6

_VMware vSphere API Python Binding_

* Official website: https://github.com/vmware/pyvmomi
* Git repository: https://github.com/vmware/pyvmomi

* Debian source package:
  * [[pyvmomi_6.0.0.2016.6-1.dsc]][pyvmomi-dsc]
  * [[pyvmomi_6.0.0.2016.6.orig.tar.gz]][pyvmomi-orig]
  * [[pyvmomi_6.0.0.2016.6-1.debian.tar.xz]][pyvmomi-debian]
  * [[pyvmomi_6.7.1-1.dsc]][pyvmomi-dsc-2]
  * [[pyvmomi_6.7.1.orig.tar.gz]][pyvmomi-orig-2]
  * [[pyvmomi_6.7.1-1.debian.tar.xz]][pyvmomi-debian-2]

* Debian 9 (Stretch) binary package:
  * [[python-pyvmomi_6.0.0.2016.6-1_all.deb]][python-pyvmomi-debpkg]
  * [[python-pyvmomi-doc_6.0.0.2016.6-1_all.deb]][python-pyvmomi-doc-debpkg]
  * [[python3-pyvmomi_6.0.0.2016.6-1_all.deb]][python3-pyvmomi-debpkg]
  * [[python-pyvmomi_6.7.1-1_all.deb]][python-pyvmomi-debpkg-2]
  * [[python-pyvmomi-doc_6.7.1-1_all.deb]][python-pyvmomi-doc-debpkg-2]
  * [[python3-pyvmomi_6.7.1-1_all.deb]][python3-pyvmomi-debpkg-2]

---

![](images/Redis-logo.svg.png?raw=true "Redis Logo")

#### redis - version 4.0.14

_Redis is an in-memory database that persists on disk_

* Official website: https://redis.io
* Git repository: https://github.com/antirez/redis

* Debian source package:
  * [redis_4.0.14-1.dsc][redis4-dsc]
  * [redis_0.11.6.orig.tar.gz][redis4-orig]
  * [redis_0.11.6-1.debian.tar.xz][redis4-debian]

* Debian 9 (Stretch) binary package:
  * [redis_4.0.14-1_all.deb][redis4-debpkg]
  * [redis-sentinel_4.0.14-1_amd64.deb][redis4-sentinel-debpkg]
  * [redis-server_4.0.14-1_amd64.deb][redis4-server-debpkg]
  * [redis-tools-dbgsym_4.0.14-1_amd64.deb][redis4-tools-dbgsym-debpkg]
  * [redis-tools_4.0.14-1_amd64.deb][redis4-redis-tools-debpkg]

## How to manually create the .deb packages and source files

You can generate all the supported packages by using the provided `Makefile` (requires the `make` tool).

### With Docker and Docker Compose

    make package DISTRO=debian9-go1.12.12 PKG=consul
    make package DISTRO=debian9-go1.12.12 PKG=vault
    make package DISTRO=debian10-go1.12.12 PKG=consul
    make package DISTRO=debian10-go1.12.12 PKG=vault
    make package PKG=docker-compose
    make package PKG=docker-py
    make package PKG=dockerpy-creds
    make package PKG=py-zabbix
    make package DISTRO=debian8 PKG=py-zabbix
    make package PKG=pyvmomi
    make package PKG=redis4

[Docker-CE][docker-ce] and [Docker Compose][docker-compose] must be installed in order
the make command to work.

Tested on:

 * Fedora 26 with `docker-ce` 17.09.1 and `docker-compose` 1.17.0,
 * Fedora 27 with `docker-ce` 17.12.0 and `docker-compose` 1.17.1,
 * Fedora 28 with `docker-ce` 18.03.1
 * Fedora 29 with `docker-ce` 18.06.1
 * Fedora 30

### With Podman and Podman Compose

#### Debian 9 (Stretch)

    make package PKG=consul DISTRO=debian9-go1.12.12 COMPOSE=podman-compose
    make package PKG=vault DISTRO=debian9-go1.12.12 COMPOSE=podman-compose

#### Debian 10 (Buster)

    make package PKG=consul DISTRO=debian10 COMPOSE=podman-compose
    make package PKG=vault DISTRO=debian10 COMPOSE=podman-compose

Tested on Fedora 31 with [Podman][podman] version 1.6.2 and [Podman Compose][podman-compose] version 0.1.6dev.


[docker-ce]: https://www.docker.com/community-edition/
[docker-compose]: https://docs.docker.com/compose/

[podman]: https://podman.io/
[podman-compose]: https://github.com/containers/podman-compose

[pyinstaller]: http://www.pyinstaller.org/

[consul-debpkg]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/consul_1.6.1-1_amd64.deb
[consul-debian]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/consul_1.6.1-1.debian.tar.xz
[consul-dsc]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/consul_1.6.1-1.dsc
[consul-orig]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/consul_1.6.1.orig.tar.gz

[docker-compose-debpkg]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/docker-compose_1.19.0-1_amd64.deb
[docker-compose-debian]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/docker-compose_1.19.0-1.debian.tar.xz
[docker-compose-dsc]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/docker-compose_1.19.0-1.dsc
[docker-compose-orig]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/docker-compose_1.19.0.orig.tar.gz

[vault-debpkg]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/vault_1.5.7-1_amd64.deb
[vault-server-debpkg]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/vault-server_1.5.7-1_amd64.deb
[vault-debian]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/vault_1.5.7-1.debian.tar.xz
[vault-dsc]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/vault_1.5.7-1.dsc
[vault-orig]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/vault_1.5.7.orig.tar.gz

[vault-debpkg-deb10]: https://github.com/madrisan/debian-packages/releases/download/v0.7.0/vault_1.5.7-1_amd64.deb
[vault-server-debpkg-deb10]: https://github.com/madrisan/debian-packages/releases/download/v0.7.0/vault-server_1.5.7-1_amd64.deb

[python-dockerpy-creds-debpkg]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/python-dockerpycreds_0.2.2-1_all.deb
[python3-dockerpy-creds-debpkg]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/python3-dockerpycreds_0.2.2-1_all.deb
[dockerpy-creds-debian]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/docker-pycreds_0.2.2-1.debian.tar.xz
[dockerpy-creds-dsc]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/docker-pycreds_0.2.2-1.dsc
[dockerpy-creds-orig]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/docker-pycreds_0.2.2.orig.tar.gz

[python-docker-debpkg]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/python-docker_3.4.1-2_all.deb
[python3-docker-debpkg]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/python3-docker_3.4.1-2_all.deb
[docker-py-debian]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/python-docker_3.4.1-2.debian.tar.xz
[docker-py-dsc]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/python-docker_3.4.1-2.dsc
[docker-py-orig]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/python-docker_3.4.1.orig.tar.gz

[python-zabbix-debpkg]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/python-pyzabbix_1.1.3-1_all.deb
[python3-zabbix-debpkg]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/python3-pyzabbix_1.1.3-1_all.deb
[py-zabbix-debian]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/py-zabbix_1.1.3-1.debian.tar.xz
[py-zabbix-dsc]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/py-zabbix_1.1.3-1.dsc
[py-zabbix-orig]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/py-zabbix_1.1.3.orig.tar.gz

[python-pyvmomi-debpkg]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/python-pyvmomi_6.0.0.2016.6-1_all.deb
[python-pyvmomi-doc-debpkg]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/python-pyvmomi-doc_6.0.0.2016.6-1_all.deb
[python3-pyvmomi-debpkg]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/python3-pyvmomi_6.0.0.2016.6-1_all.deb
[pyvmomi-debian]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/pyvmomi_6.0.0.2016.6-1.debian.tar.xz
[pyvmomi-dsc]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/pyvmomi_6.0.0.2016.6-1.dsc
[pyvmomi-orig]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/pyvmomi_6.0.0.2016.6.orig.tar.gz

[python-pyvmomi-debpkg-2]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/python-pyvmomi_6.7.1-1_all.deb
[python-pyvmomi-doc-debpkg-2]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/python-pyvmomi-doc_6.7.1-1_all.deb
[python3-pyvmomi-debpkg-2]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/python3-pyvmomi_6.7.1-1_all.deb
[pyvmomi-debian-2]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/pyvmomi_6.7.1-1.debian.tar.xz
[pyvmomi-dsc-2]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/pyvmomi_6.7.1-1.dsc
[pyvmomi-orig-2]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/pyvmomi_6.7.1.orig.tar.gz

[redis4-debpkg]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/redis_4.0.14-1_all.deb
[redis4-sentinel-debpkg]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/redis-sentinel_4.0.14-1_amd64.deb
[redis4-server-debpkg]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/redis-server_4.0.14-1_amd64.deb
[redis4-tools-dbgsym-debpkg]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/redis-tools-dbgsym_4.0.14-1_amd64.deb
[redis4-redis-tools-debpkg]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/redis-tools_4.0.14-1_amd64.deb
[redis4-debian]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/redis_4.0.14-1.debian.tar.xz
[redis4-dsc]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/redis_4.0.14-1.dsc
[redis4-orig]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/redis_4.0.14.orig.tar.gz
