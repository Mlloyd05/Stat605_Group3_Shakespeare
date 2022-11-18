#!/bin/bash   

export LC_ALL=C

sort -m shakespeare_sorted.0 shakespeare_sorted.1 shakespeare_sorted.2 shakespeare_sorted.3 shakespeare_sorted.4 > "large_shakespeare_sorted"

cat large_shakespeare_sorted | uniq -c > "countsOfWords"
