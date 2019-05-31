#!/bin/bash

score=0

for filename in *yaml *yml ; do
  [ -f "${filename}" ] || break
  docker run -i kubesec/kubesec:d432be9 scan /dev/stdin < ${filename} | jq --exit-status ".[].score > ${score}" && echo ${filename} has a score higher than ${score} && break

done

