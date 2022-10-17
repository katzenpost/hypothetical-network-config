genconfig: deps
	cd genconfig && go build && ./genconfig -v -nv 5 -d /data
deps:
	git submodule update

build-docker-containers: deps
	cd katzenpost/docker && make server && make voting_authority
