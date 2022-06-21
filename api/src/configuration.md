# Configuration
To configure your server, you can edit the `config.yml` file located in `server/gamemodes` (**Subject to change**).

Default values are shown below.
```yaml
title: TeardownM Server
gamemode: sandbox
version: 0.0.0 # Not needed, remove.
debug: false
public_ip: "159.89.18.92" # Not needed, remove.
map: villa_gordon
spawn_points: [[135, 9, -72], [135, 8, -66], [125, 8, -66]]
```

`title` - The title of your server, this will be shown in the server browser. Max length: 32 characters.<br>
`gamemode` - The gamemode you want to use.<br>
`version` - The version of your server.<br>
`debug` - Gives you more information about the server, useful for debugging.<br>
`public_ip` - The public IP of your server.<br>
`map` - The map you want to use.<br>
`spawn_points` - The spawn points of your server, this is a 2D array of spawn points.<br>