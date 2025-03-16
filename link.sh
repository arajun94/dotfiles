#!/bin/bash

for file in $(ls -f | grep "^\.\w"); do
    ln -fs ${PWD}/${file} ${HOME}
done
