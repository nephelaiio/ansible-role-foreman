.PHONY: cleanprepare test lint

clean:
	rm -rf /tmp/resolv.conf

prepare: clean
	echo nameserver 1.1.1.1 > /tmp/resolv.conf

test: prepare
	molecule test

lint:
	molecule lint
