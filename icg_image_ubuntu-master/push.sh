#!/bin/bash


$(aws ecr get-login --no-include-email --region ap-northeast-2)
dir=$(pwd)
for r in $(cat ${dir}/build.json | jq '.root' | column -t -s'[],"'); do
    cd ${dir}/${r}
    docker tag ${r} 635701114047.dkr.ecr.ap-northeast-2.amazonaws.com/images:${r}
    docker push 635701114047.dkr.ecr.ap-northeast-2.amazonaws.com/images:${r} 
done

for p in $(cat ${dir}/build.json | jq '.package' | column -t -s'[],"'); do
    cd ${dir}/${p}
    docker tag ${p} 635701114047.dkr.ecr.ap-northeast-2.amazonaws.com/images:${p}
    docker push 635701114047.dkr.ecr.ap-northeast-2.amazonaws.com/images:${p}
done

for t in $(cat ${dir}/build.json | jq '.tool' | column -t -s'[],"'); do
    cd ${dir}/${t}
    docker tag ${t} 635701114047.dkr.ecr.ap-northeast-2.amazonaws.com/images:${t}
    docker push 635701114047.dkr.ecr.ap-northeast-2.amazonaws.com/images:${t}
done


