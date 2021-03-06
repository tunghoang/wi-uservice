#!/bin/bash

source model-list.sh
if [[ ""$1 != "" ]]; then
    update=$1
else
    update=0
fi
for MODEL in "${MODELS[@]}"; do
    info=`python install.py --model $MODEL --update $update`
    #name=${info[0]}
    #model=${info[1]}
    #model_filename=${info[2]}
    #./install-model.sh $name $model $model_filename $update
    ./install-model.sh $info $update
done;
