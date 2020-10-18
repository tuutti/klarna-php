REPOSITORY = ghcr.io/tuutti/klarna-base-generator

ifeq ($(TAG),)
	TAG = 1.0
endif

.PHONY: build-image push-image release-image build-client

build-image:
	docker build -t $(REPOSITORY):$(TAG) ./

push-image:
	docker push $(REPOSITORY):$(TAG)

build-client:
	openapi-generator-cli generate -c base.config.json -i base.json -g php -o . --skip-validate-spec --git-host=github.com --git-repo-id=php-klarna-base --git-user-id=tuutti --global-property modelTests=false --global-property apiTests=false

release-image: build-image push-image
