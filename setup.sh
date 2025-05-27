#!/usr/bin/env bash
set -e
if ! command -v node >/dev/null; then
    sudo apt-get update
    sudo apt-get install -y nodejs npm
fi
gem install bundler
bundle install
