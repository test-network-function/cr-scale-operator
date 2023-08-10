#!/bin/bash

echo "To implement the required go types after changes made in controller and API"
make generate

echo "To generate CRD manifests and RBAC from KubeBuilder markers"
make manifests

echo "To compile"
make install

