#!/bin/bash
set -e

git fetch upstream

cd panda
git fetch upstream
git rebase upstream/master
git push -f --no-verify

cd ..
git reset --hard HEAD~1
git rebase upstream/master
git add panda && git commit -m "Bump panda" --no-verify
git push -f --no-verify

git submodule update
