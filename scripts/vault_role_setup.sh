export VAULT_TOKEN="YOUR_ROOT_TOKEN"
vault login
vault write auth/approle/role/backend-role \
    policies="backend-policy" \
    token_ttl=1h \
    token_max_ttl=4h
# 3. Retrieve your Role ID
vault read auth/approle/role/backend-role/role-id
# 4. Generate a Secret ID
vault write -f auth/approle/role/backend-role/secret-id