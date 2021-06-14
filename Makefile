GPG_KEY=B3D1019140FC8712243A16843134270966E8EFD7
APTLY=aptly -config aptly.conf.json

.PHONY: all
all: publish-stable

.PHONY: publish-%
publish-%:
	${MAKE} clean
	${APTLY} repo create -distribution $* $*
	${APTLY} repo add $* packages/$*/*
	${APTLY} publish -gpg-key="${GPG_KEY}" repo $* filesystem:public:studio
	${MAKE} clean

.PHONY: clean
clean:
	rm -rf db
	rm -rf pool
