#! /bin/bash
# Membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1.
echo '1. Build image dari Dockerfile'
docker build -t item-app:v1 .
printf ''

# Melihat daftar image di lokal.
echo '\n2. Daftar image di lokal:'
docker images
printf '\n'

# Mengubah nama image agar sesuai dengan format Docker Hub
echo '\n3. Mengubah nama image agar sesuai dengan Docker Hub'
docker tag item-app:v1 bagusnusantara/item-app:v1
echo 'Berhasil'

# Login ke Dockerhub
echo '\n4. Login ke Docker Hub'
echo $PASSWORD_DOCKER_HUB | docker login -u bagusnusantara --password-stdin

# Mengunggah image ke Docker Hub
echo '\n5. Mengunggah image ke Docker Hub'
docker push bagusnusantara/item-app:v1