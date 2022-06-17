export $(cat infra/.env | xargs)

export REALM=$KEYCLOAK_REALM
export CLIENT_SECRET=$KEYCLOAK_CLIENT_SECRET
export CLIENT_ID=$KEYCLOAK_CLIENT_ID
export KEYCLOAK_URL="https://auth.example.com"

go run cmd/server/server.go