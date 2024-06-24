#!/bin/bash
set -e

git fetch origin
git reset --hard origin/personal
git submodule update

tmux new-window ./compileop.sh
tmux a -t comma:1

