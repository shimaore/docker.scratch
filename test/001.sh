#!/bin/sh

docker images | egrep -q '^shimaore/scratch +latest.*0 B$' && echo 'OK'
