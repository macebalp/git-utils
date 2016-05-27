#!/bin/bash

for i in `git branch -a | grep remote`; do git branch --track ${i#remotes/origin/} $i; done
