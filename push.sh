#!/usr/bin/env bash

set -e

git checkout main
set +e
git branch -D new_main 2>/dev/null
set -e
git checkout --orphan new_main

git add --all

git commit -m "Initial commit"
git branch -D main
git branch -m main
git push origin -f main

rm -rf .git/logs
