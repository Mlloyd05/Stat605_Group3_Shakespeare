#!/bin/bash   

export LC_ALL=C

sort -m shakespeare_sorted.00 shakespeare_sorted.01 shakespeare_sorted.02 shakespeare_sorted.03 shakespeare_sorted.04 > "large_shakespeare_sorted"

cat large_shakespeare_sorted | uniq -c > "countsOfWords"
