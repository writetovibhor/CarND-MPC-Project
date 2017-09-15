if [ "$#" -eq 1 ] && [ $1 == "build" ]; then
    docker build --build-arg http_proxy --build-arg https_proxy --rm -t carnd-mpc .
fi
docker rm -f carnd-mpc
docker run -it --rm --name carnd-mpc -v `pwd`:/project --entrypoint="/project/run.sh" -e http_proxy -e https_proxy -p 4567:4567 carnd-mpc
