#!/bin/bash

IMG=$1
NAMESPACE=$2

echo "------ Setting the operator namespace -----------"

cd config/manager
kustomize edit set image controller=${IMG}
kustomize edit set namespace "${NAMESPACE}"
cd ../../

cd config/default
kustomize edit set namespace "${NAMESPACE}"
cd ../../

echo "-------- Building the image --------------"
make docker-build IMG=$IMG


echo "-------- Make sure you login to image registry to proceed --------"

echo "-------- Pushing the image ---------------"
make docker-push IMG=$IMG

echo "-------- Deploy the operator -------------"
make deploy IMG=$IMG

echo "------- Verify the deployment ------------"
oc get pods -n $NAMESPACE



