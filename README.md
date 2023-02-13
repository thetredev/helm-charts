# thetredev Helm Charts

## Helm Charts

![GitHub](https://img.shields.io/github/license/thetredev/helm-charts)

This repository hosts my Helm Charts for deploying on [Kubernetes](https://kubernetes.io/).

## Before you begin

### Setup a Kubernetes Cluster

The quickest way to setup a Kubernetes cluster is with [Azure Kubernetes Service](https://azure.microsoft.com/en-us/services/kubernetes-service/), [AWS Elastic Kubernetes Service](https://aws.amazon.com/eks/) or [Google Kubernetes Engine](https://cloud.google.com/kubernetes-engine/) using their respective quick-start guides.

For setting up Kubernetes on other cloud platforms or bare-metal servers refer to the Kubernetes [getting started guide](http://kubernetes.io/docs/getting-started-guides/).

### Install Helm

Get the latest [Helm release](https://github.com/helm/helm#install).

### Add Helm chart repo

Once you have Helm installed, add the repo as follows:

```console
helm repo add thetredev https://thetredev.github.io/helm-charts
helm repo update
```

## Search and install charts

```console
helm search repo thetredev
helm install my-release thetredev/<chart>
```

You can find specific charts inside the [charts](charts) directory.

## Contributing

You're always welcome to create or help fix an [issue](https://github.com/thetredev/helm-charts/issues).
