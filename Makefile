dev:
	PRESERVE_CONTAINER=1 CONTINUE=1 CLEAN=1 ./build-docker.sh

shell:
	sudo docker run -it --privileged --volumes-from=pigen_work pi-gen /bin/bash

clean-docker:
	docker rm -v -f pigen_work