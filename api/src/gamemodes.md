# Gamemodes
A gamemode is essentially a set of rules that your server will follow, for example, a sandbox gamemode will allow players to do whatever they want, while a roleplay gamemode will only allow players to do things that are allowed in a roleplay environment, such as purchasing weapons, or using vehicles.<br><br>
By default, we have created two gamemodes for you, `sandbox` and `roleplay`.

## Creating a gamemode
1. Create a new directory in `server/gamemodes` of the name of your gamemode.
2. Create a `main.lua` file in that directory.
3. The `main.lua` file should contain the following code:
```lua
local player = require("player")

function OnInitialize()
    -- Called when the gamemode is initialized
end

function OnConnecting(user_id)
    -- Called when a player is connecting
end

function OnConnected(user_id)
    -- Called when a player has connected and spawned in the world
end

function OnDiconnected(user_id)
    -- Called when a player has disconnected
end

function OnPlayerDeath(user_id, killer_id)
    -- Called when a player has died
end

function OnMessage(user_id, message)
    -- Called when a player sends a message
    -- Return: <message> - The message that the player sent. <nil> if you do not want that message to be sent.
end

function OnTick()
    -- Called every tick
end
```