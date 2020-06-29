#!/bin/bash


# docker run -v /Users/usr0101039/.ssh:/root/.ssh -it --rm alpine-mosh-client/2020-0629 bash

docker_run () {
docker run \
	--mount type=bind,src=/Users/usr0101039/.ssh,dst=/root/.ssh \
	--mount type=bind,src=/Users/usr0101039/.config,dst=/root/.config \
	-it --rm alpine-mosh-client/2020-0629 bash
}
	
new_docker_run () {
docker run \
	--mount type=bind,src=/Users/usr0101039/,dst=/root/ \
	-it --rm alpine-mosh-client/2020-0629 bash
}
	


###
docker_run
