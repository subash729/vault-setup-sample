path "auth/*" {
  capabilities = ["list", "read"]
}

path "auth/userpass/users/*" {
  capabilities = ["read", "list", "update", "patch"]
}

path "sys/policies/acl/*" {
  capabilities = ["list"]
}

path "sys/policies/acl/developer" {
  capabilities = ["read"]
}

# Allow development
path "development/metadata/*" {
  capabilities = ["list", "read"]
}

path "development/data/*" {
  capabilities = ["create", "read", "update", "delete", "patch"]
}

# Allow staging
path "staging/metadata/*" {
  capabilities = ["list", "read"]
}

# Allow reading and writing data for staging secret
path "staging/data/*" {
  capabilities = ["create", "read", "update", "delete", "patch"]
}