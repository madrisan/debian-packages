[![License](https://img.shields.io/badge/License-Apache--2.0-blue.svg)](https://spdx.org/licenses/Apache-2.0.html)

# Debian Packages

## Supported packages

![](images/HashiCorp-Vault-logo.png?raw=true)

#### HashiCorp Vault - version 0.9.1

_A Tool for Managing Secrets_.

Official website: [HashiCorp Vault](https://www.vaultproject.io/)

---

![](images/HashiCorp-Consul-logo.png?raw=true)

#### HashiCorp Consul - version 1.0.2

_Service Discovery and Configuration Made Easy_.

Official website: [HashiCorp Consul](https://www.consul.io/)

## How to create the .deb packages

You can use the provided make file and enter the commands:

    make package PKG=consul
    make package PKG=vault

Docker (tested with Docker-CE) and Docker Compose must be installed in order the make command to work.
