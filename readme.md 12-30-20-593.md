docker save -o myimage.tar myimage
docker load -i myimage.tar

61095921f7b521ef9a4a0dc2812acb89c4945ecc

echo 61095921f7b521ef9a4a0dc2812acb89c4945ecc | docker login ghcr.io --username paerck25 --password-stdin
docker tag myimage ghcr.io/paerck25/myimage:latest
docker push ghcr.io/paerck25/myimage
docker log containerID
