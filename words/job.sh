#!/bin/bash

cat "shakespeare.$1" | sed -e's/\t/ /g' | sed -e 's/ /\n/g' | sort > "shakespeare_sorted.$1"