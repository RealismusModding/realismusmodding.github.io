#!/usr/bin/env bash

# Halt script on error
set -e

bundle exec jekyll build
bundle exec htmlproofer ./_site
# --url-ignore
