#!/bin/bash

if docker inspect shimaore/scratch > /dev/null; then
  cat <<'EOF'
There is already a scratch image; use
  docker rmi shimaore/scratch
to remove it first if it is broken.
EOF
else
  # scratch.tar is a tar file containing
  #   drwxr-xr-x root/root         0 2014-09-11 19:51 ./
  docker import - shimaore/scratch < scratch.tar
fi
