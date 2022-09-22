#!/bin/bash
apt update
apt install -y ruby-full ruby-bundler build-essential
echo "Ruby Version"
ruby -v
echo "Bundler Version"
bundler -v
