[![License](https://img.shields.io/badge/License-Apache--2.0-blue.svg)](https://spdx.org/licenses/Apache-2.0.html)

# Debian Packages

## Supported packages

![](images/HashiCorp-Vault-logo.png?raw=true "HashiCorp Vault")

#### HashiCorp Vault - version 0.10.0

_A Tool for Managing Secrets_.

* Official website: https://www.vaultproject.io
* Git repository: https://github.com/hashicorp/vault

* Debian source package:
  * [[vault_0.10.0-1.dsc]][vault-dsc]
  * [[vault_0.10.0.orig.tar.gz]][vault-orig]
  * [[vault_0.10.0-1.debian.tar.xz]][vault-debian]

* Debian 9 (Stretch) binary packages:
  * [[vault_0.10.0-1_amd64.deb]][vault-debpkg]
  * [[vault-server_0.10.0-1_amd64.deb]][vault-server-debpkg]

---

![](images/HashiCorp-Consul-logo.png?raw=true "HashiCorp Consul")

#### HashiCorp Consul - version 1.0.7

_Service Discovery and Configuration Made Easy_.

* Official website: https://www.consul.io
* Git repository: https://github.com/hashicorp/consul

* Debian source package:
  * [[consul_1.0.7-1.dsc]][consul-dsc]
  * [[consul_1.0.7.orig.tar.gz]][consul-orig]
  * [[consul_1.0.7-1.debian.tar.xz]][consul-debian]

* Debian 9 (Stretch) binary package:
  * [[consul_1.0.7-1_amd64.deb]][consul-debpkg]

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

## How to manually create the .deb packages and source files

You can make use of the provided Makefile (requires the `make` tool)
and enter the commands

    make package PKG=consul
    make package PKG=vault
    make package PKG=docker-compose

[Docker-CE][docker-ce] and [Docker Compose][docker-compose] must be installed in order
the make command to work.

Tested on Fedora 26 with docker-ce 17.09.1 and docker-compose 1.17.0
and on Fedora 27 with docker-ce 17.12.0 and docker-compose 1.17.1.

[docker-ce]: https://www.docker.com/community-edition/
[docker-compose]: https://docs.docker.com/compose/
[pyinstaller]: http://www.pyinstaller.org/

[consul-debpkg]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/consul_1.0.7-1_amd64.deb
[consul-debian]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/consul_1.0.7-1.debian.tar.xz
[consul-dsc]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/consul_1.0.7-1.dsc
[consul-orig]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/consul_1.0.7.orig.tar.gz

[docker-compose-debpkg]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/docker-compose_1.19.0-1_amd64.deb
[docker-compose-debian]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/docker-compose_1.19.0-1.debian.tar.xz
[docker-compose-dsc]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/docker-compose_1.19.0-1.dsc
[docker-compose-orig]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/docker-compose_1.19.0.orig.tar.gz

[vault-debpkg]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/vault_0.10.0-1_amd64.deb
[vault-server-debpkg]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/vault-server_0.10.0-1_amd64.deb
[vault-debian]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/vault_0.10.0-1.debian.tar.xz
[vault-dsc]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/vault_0.10.0-1.dsc
[vault-orig]: https://github.com/madrisan/debian-packages/releases/download/v0.6.0/vault_0.10.0.orig.tar.gz
