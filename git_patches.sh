#!/bin/bash
# Accpt input from git log --oneline | cut -d' ' -f1 | tac , e.g.
#   $ git log --oneline | cut -d' ' -f1 | tac > /tmp/p
#   $ git_patches.sh ./4.1/ `cat /tmp/p`

DIR=$1
shift

i=0
for c in $@; do
	git show $c > $DIR/`printf "%.2d" $i`.diff;
	((i=i+1));
done
