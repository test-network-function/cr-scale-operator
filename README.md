# cr-scale-operator
This is a simple operator that can be scaled like the deployment scale.

## Description
This repo is used to provide the code for deploying the custom resource for the QE testing. The custom operator is scalable, either by replica count or by horizontal pod autoscaler.

## Getting started

1. **To compile the operator code**

```sh
./scripts/compile.sh
```

2. **To build and deploy the operator code**

```sh
export KUBECONFIG=<cluster-kubeconfig>
export IMG=<image-registry>.cr-scale-operator:<version>
export NAMESPACE=<namespace>

./scripts/build-deploy.sh $IMG $NAMESPACE
```

**NOTE** In case you do not have access to docker/quay, avoid this script and only deploy from the image pushed already in the image registry by running the following command.

```sh
make deploy $IMG
```

3. **To Install sample instance of Custom resources for testing**

```sh
kubectl apply -f config/samples/
```

## Cleanup
### Uninstall CRDs
To delete the CRDs from the cluster:

```sh
make uninstall
```

### Undeploy controller
UnDeploy the controller from the cluster:

```sh
make undeploy
```

## Contributing
Fork, pull request, approval.
## Development
This project aims to follow the Kubernetes [Operator pattern](https://kubernetes.io/docs/concepts/extend-kubernetes/operator/).

It uses [Controllers](https://kubernetes.io/docs/concepts/architecture/controller/),
which provide a reconcile function responsible for synchronizing resources until the desired state is reached on the cluster.
### Modifying the API definitions
If you are editing the API definitions, generate the manifests such as CRs or CRDs using:

```sh
make manifests
```


**NOTE:** Run `make --help` for more information on all potential `make` targets

More information can be found via the [Kubebuilder Documentation](https://book.kubebuilder.io/introduction.html)

## License

Copyright 2023.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

