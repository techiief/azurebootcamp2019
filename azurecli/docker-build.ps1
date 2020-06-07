echo "create images using docker compose"
echo "Run Command: docker-compose -f docker-compose.yml -f docker-compose-override.yml up -d"
echo "`n"
Write-Output "--------------------------------------------------------------------"
docker-compose -f docker-compose.yml -f docker-compose-override.yml up -d
Write-Output "--------------------------------------------------------------------"
echo "`n"

echo "verify docker images have been created"
echo "Run Command: docker images -a"
echo "`n"
Write-Output "--------------------------------------------------------------------"
docker images -a
Write-Output "--------------------------------------------------------------------"
echo "`n"

echo "verify docker containers are running"
echo "Run Command: docker ps -a"
echo "`n"
Write-Output "--------------------------------------------------------------------"
docker ps -a
Write-Output "--------------------------------------------------------------------"
echo "`n"

