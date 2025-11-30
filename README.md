# minecraft-server-setup-through-ansible
Ansible setup I use to deploy a Minecraft Server for the anual two week Minecraft phase. It's still a bit janky since I made this in a rush. May or may not update it later on.

It deploys a paper server, meant to be used with:

- Bluemap
- Floodgate
- Geyser
- Graves
- UnifiedMetrics
- Veinminer

## General Setup

Set the IP of the target host under `inventory/hosts.ini`

You can adjust, server ops, the whitelist, server icon and the server properties by changing the respective files in the `files` directory

The dyndns role will try to deploy a dyndns using [ipv64](https://ipv64.net/) as it's dyndns provider. Dissable execution of this role if you intend on using another dyndns provider.

Grafana Web UI will be exposed on port 3000. You will still need to configure grafana manually. Also consider changing the password for both grafana and metrics, since it just uses default credentials when exposing it.

## Plugin configuration

### [Bluemap](https://github.com/BlueMap-Minecraft/BlueMap) config

Config can be found under `minecraft_paper/files/plugins/Bluemap`

Drop the plugin .jar in `minecraft_paper/files/plugins`

### [UnifiedMetrics](https://github.com/Cubxity/UnifiedMetrics) config

Will allow you to collect useful metrics about the servers performance. Use a dashboard from

Config can be found under `minecraft_paper/files/plugins/UnifiedMetrics/driver/prometheus.yml`

Drop the plugin .jar in `minecraft_paper/files/plugins`



### [Geyser](https://github.com/GeyserMC/Geyser) + [floodgate](https://github.com/GeyserMC/Floodgate) config

Geyser in combination with floodgate will allow bedrock players to be able to join this java server.

Config can be found under `minecraft_paper/files/plugins/Geyser/config.yml`

Drop the plugin .jar in `minecraft_paper/files/plugins`

### [Veinminer](https://github.com/MiraculixxT/Veinminer) config

Veinminer will allow you to configure mining blocks in bulk. Useful QoL feature for ores and trees.

Config can be found under `minecraft_paper/files/plugins/Veinminer`

Drop the plugin .jar in `minecraft_paper/files/plugins`