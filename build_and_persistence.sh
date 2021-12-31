#!/bin/bash

function build_and_persistence () {
    echo $1
}

for INDEX in $*
do
  build_and_persistence "$INDEX"
done
