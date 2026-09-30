$envFile = "C:/Secrets/gift_app/.env"

$env:ENV_FILE_PATH = $envFile

docker compose --env-file $envFile up -d --build