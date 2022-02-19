#!/bin/bash

for i in {1..500}
do
  echo $i
  kustomize edit set namespace cl-content-$i
  kustomize build . > overlay/cl-content-$i.yaml
done
