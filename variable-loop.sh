#!/usr/bin/env bash
#set -x

dev1=foo
dev2=bar
dev3=foobar

echo 'without eval not what we want...'
for i in $(seq 1 3); do
	echo dev$i
	echo $dev$i
done

echo 'with eval it is working...'
for i in $(seq 1 3); do
	eval echo \$dev$i
done
