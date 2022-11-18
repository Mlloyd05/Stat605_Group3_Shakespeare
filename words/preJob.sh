#!/bin/bash

WGET="http://www.stat.wisc.edu/~jgillett/605/CHTC/wordCounting/shakespeare.tar"
wget $WGET
tar -xvf shakespeare.tar

cat ./shakespeare/comedies/* ./shakespeare/histories/* ./shakespeare/poetry/*  ./shakespeare/tragedies/* > shakespeare_full

nfiles=5
data="shakespeare_full"

echo $nfiles $data

nlines=$(wc -l < $data)
nlinessplit=$(($nlines / $nfiles))
left=$(($nlines % $nfiles))

echo $left

if [[ $left > 0 ]]; then
nlinessplit=$(($nlinessplit +1))
fi

split -d -l $nlinessplit $data "shakespeare."