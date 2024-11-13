podman pod create -p 8080:8080 --name mypod --volume ./html:/var/www/html:z
podman create --pod mypod --name myapp quay.io/rhatdan/myimage
podman create --pod mypod --name time --workdir /var/www/html ubi8 ./time.sh
