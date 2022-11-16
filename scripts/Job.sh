#!/bin/bash                                                                                                
for i in {0..4}
do
	cat "shakespeare.$i" | sed -e's/\t/ /g' | sed -e 's/ /\n/g' | sort > "shakespeare_sorted.$i"
done
 

#!/bin/bash  