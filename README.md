# SteamCMD

## SteamCMD Helm Charts

![GitHub](https://img.shields.io/github/license/thetredev/steamcmd-helm)

This repository hosts [SteamCMD](https://github.com/thetredev/steamcmd/) Helm Charts for deploying on [Kubernetes](https://kubernetes.io/).

## Before you begin

### Setup a Kubernetes Cluster

The quickest way to setup a Kubernetes cluster is with [Azure Kubernetes Service](https://azure.microsoft.com/en-us/services/kubernetes-service/), [AWS Elastic Kubernetes Service](https://aws.amazon.com/eks/) or [Google Kubernetes Engine](https://cloud.google.com/kubernetes-engine/) using their respective quick-start guides.

For setting up Kubernetes on other cloud platforms or bare-metal servers refer to the Kubernetes [getting started guide](http://kubernetes.io/docs/getting-started-guides/).

### Install Helm

Get the latest [Helm release](https://github.com/helm/helm#install).

### Add Helm chart repo

Once you have Helm installed, add the repo as follows:

```console
TODO
```

## Search and install charts

```console
TODO
```

## Configuration

The following table lists the configurable parameters of the helm chart and their default values.

| Parameter                      | Description                                                                                | Default         | Required |
|:-------------------------------|:-------------------------------------------------------------------------------------------|:----------------|:---------|
| `deployment.pullPolicy`        | Container pull policy                                                                      | `IfNotPresent`  | no  |
| `deployment.game`              | Game server type to use                                                                    | `nil`           | yes |
| `network.ip`                   | Load balancer IP address of the game server to use                                         | `nil`           | yes |
| `network.ports.server`         | Container and exposed game server port to use                                              | `27015`         | no  |
| `network.ports.rcon.enabled`   | Enable RCON TCP port (same as server port)                                                 | `false`         | yes |
| `network.ports.ssh.enabled`    | Whether to enable the container SSH server                                                 | `false`         | yes |
| `network.ports.ssh.port`       | Exposed SSH port to use if SSH is enabled                                                  | `22`            | no  |
| `network.ports.ssh.secretName` | The secret containing the key `authorized_keys` to use for SSH server access               | `nil`           | yes if SSH is enabled, and cannot be `nil` if SSH is enabled |
| `storage`                      | Persistent storage size (only local storage is supported at the moment)                    | `nil`           | yes, cannot be `nil` |
| `environment.timezone`         | Container time zone to use                                                                 | `Etc/UTC`       | no |
| `environment.steamcmd.uid`     | SteamCMD user ID to use                                                                    | `5000`          | no, only set if you have to |
| `environment.steamcmd.gid`     | SteamCMD group ID to use                                                                   | `5000`          | no, only set if you have to |

## Contributing

TODO
