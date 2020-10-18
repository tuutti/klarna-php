#!/bin/bash

openapi-generator-cli generate -c base.config.json -i base.json -g php -o . --skip-validate-spec --git-host=github.com --git-repo-id=php-klarna-base --git-user-id=tuutti --global-property modelTests=false --global-property apiTests=false
