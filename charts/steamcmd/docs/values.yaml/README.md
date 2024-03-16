# values.yaml options

## Overview
See the `Configuration` section of [the chart readme](../../README.md#configuration).

## deployment.pullPolicy
See https://kubernetes.io/docs/concepts/containers/images/#image-pull-policy

## deployment.game
| Value | Game | Engine | App ID |
| --- | --- | --- | --- |
| `cs` | Counter-Strike | GoldSrc | 90 |
| `czero` | Counter-Strike: Condition Zero | GoldSrc | 90 |
| `dmc` | Deathmatch Classic | GoldSrc | 90 |
| `dod` | Day of Defeat | GoldSrc | 90 |
| `hlmp` | Half-Life: Deathmatch | GoldSrc | 90 |
| `op4` | Half-Life: Opposing Force | GoldSrc | 90 |
| `tfc` | Team Fortress Classic | GoldSrc | 90 |
| `css` | Counter-Strike: Source | Source | 232330 |
| `dods` | Day of Defeat: Source | Source | 232290 |
| `gm` | Garry's Mod | Source | 4020 |
| `hl2mp` | Half-Life 2: Deathmatch | Source | 232370 |
| `l4d` | Left 4 Dead | Source | 510 |
| `l4d2` | Left 4 Dead 2 | Source | 222860 |
| `bmc` | Black Mesa: Deathmatch | Source (CS:GO) | 346680 |
| `cs2` | Counter-Strike 2 | Source 2 | 730 |

## deployment.replicas
See https://kubernetes.io/docs/concepts/workloads/controllers/deployment/#replicas

## deployment.revisionHistoryLimit
See https://kubernetes.io/docs/concepts/workloads/controllers/deployment/#clean-up-policy

## network.ip
The external IP address of the cluster that's exposed to the public (load balancer IP).

## network.ports.server
The game server port (UDP) to use. Due to how Valve has implemented the engine(s), it is recommended to set the same port value to both the container port (internal) and the exposed port (external).

You can try to mix and match, but at least on a Docker deployment it didn't work for me:

| Container port | External port | Did it work for me? |
| --- | --- | --- |
| 27015 | 27015 | yes |
| 27015 | 27017 | no |
| 27017 | 27015 | no |

## network.ports.rcon.enabled
Enable or disable RCON (TCP) on the same port as what is set for `network.ports.server`.

## network.ports.ssh.enabled
Enable or disable the container's SSH server.

## network.ports.ssh.port
The SSH port (TCP) to expose if `network.ports.ssh.enabled` is set to `true`.

## network.ports.ssh.secretName
The secret name to load the `authorized_keys` file from. See https://github.com/thetredev/steamcmd?tab=readme-ov-file#ssh-server

## storage
Persistent storage size. See https://kubernetes.io/docs/concepts/storage/persistent-volumes/#capacity

## resources.requests.memory
See https://kubernetes.io/docs/concepts/configuration/manage-resources-containers

## resources.requests.cpu
See https://kubernetes.io/docs/concepts/configuration/manage-resources-containers

## resources.limits.memory
See https://kubernetes.io/docs/concepts/configuration/manage-resources-containers

## resources.limits.cpu
See https://kubernetes.io/docs/concepts/configuration/manage-resources-containers

## environment.timezone
Container time zone to use in Unix `tz database` notation (`/usr/share/zoneinfo`).

## environment.steamcmd.uid
SteamCMD user ID to use.

## environment.steamcmd.gid
SteamCMD group ID to use.
