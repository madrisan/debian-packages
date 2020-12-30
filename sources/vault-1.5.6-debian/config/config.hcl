pid_file = "/run/vault/vault.pid"

backend "file" {
  path = "/src/vault/file"
}

listener "tcp" {
  address = "127.0.0.1:8200"
  tls_disable = 1
}
