#!/bin/sh
echo '------------------------------'
./run
echo '------------------------------'
./run meow
echo '------------------------------'
./run woof
echo '------------------------------'
./run ts-node
echo '------------------------------'
./run ts-node run -e "console.log('meow')"
echo '------------------------------'
./run git
echo '------------------------------'
./run git current-branch
echo '------------------------------'