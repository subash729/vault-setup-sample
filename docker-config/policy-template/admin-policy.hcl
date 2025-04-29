path "*" {
  capabilities = ["create", "read", "list"]
}

path "sys/policies/acl/*" {
  capabilities = ["read", "create", "update", "delete", "list"]
}

path "auth/userpass/users/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

path "sys/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

path "secret/*" {
  capabilities = ["create", "read", "update", "patch", "delete", "list"]
}
