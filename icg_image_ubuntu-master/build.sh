#!/bin/bash

dir=$(pwd)
for r in $(cat ${dir}/build.json | jq '.root' | column -t -s'[],"'); do
    cd ${dir}/${r}
    docker build --tag ${r} .   
#    docker tag ${r} 49.254.0.67:5000/${r}
#    docker push 49.254.0.67:5000/${r}
done

for p in $(cat ${dir}/build.json | jq '.package' | column -t -s'[],"'); do
    cd ${dir}/${p}
    docker build --tag ${p} .
#    docker tag ${p} 49.254.0.67:5000/${p}
#    docker push 49.254.0.67:5000/${p}
done

for p in $(cat ${dir}/build.json | jq '.tool' | column -t -s'[],"'); do
    cd ${dir}/${p}
    docker build --tag ${p} .
#    docker tag ${p} 49.254.0.67:5000/${p}
#    docker push 49.254.0.67:5000/${p}
done
