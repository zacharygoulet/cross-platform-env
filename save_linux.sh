#!/bin/bash

cp -a ~/.config/* .config/

git add .
git commit -m "save env from linux"
git push
