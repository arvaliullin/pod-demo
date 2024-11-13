podman pod create -p 8080:80 --name mypod --volume ./html:/usr/share/nginx/html:z
podman create --pod mypod --name myapp nginx
podman create --pod mypod --name time --workdir /usr/share/nginx/html ubi8 ./time.sh
podman pod start mypod

podman pod rm --all --force
podman rm --all --force

podman play kube mypod.yaml
