#. .\scripts\docker-down.ps1

docker-compose build

docker-compose up

# docker run --rm -it `
#   --volume=${PWD}:/srv/jekyll `
#   -p 4000:4000 `
#   jekyll/jekyll `
#   jekyll build

#docker run --name cremasite --rm -d -v #####${PWD}\_site:/usr/share/nginx/html -p 8080:80 nginx
