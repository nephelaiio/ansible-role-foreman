.PHONY: test lint

test:
	docker run --rm -it -v "$(pwd)":/tmp/$(basename "${PWD}"):ro -v /var/run/docker.sock:/var/run/docker.sock -w /tmp/$(basename "${PWD}") quay.io/ansible/molecule:3.0.2 molecule test

lint:
	molecule lint
