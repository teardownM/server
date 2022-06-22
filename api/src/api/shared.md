# Shared

**Important**: Any code on the server, remove `TDM_` from the beginning.  
Only client-side code should start with `TDM_`

## Player Related
- `TDM_GetPlayerName(iPlayer)`
  - **Returns** the player's name if successful, nil otherwise.
- `TDM_GetPlayerSteamID(iPlayer)`
  - **Returns** the player's SteamID if successful, nil otherwise.
- `TDM_GetPlayers()`
  - **Returns** a table of all players.
- `TDM_GetPlayerCount()`
  - **Returns** the number of players.
- `TDM_GetPlayerPosition()`
  - **Returns** the player's position (x, y, z).
- `TDM_GetPlayerRotation()`
  - **Returns** the player's rotation (x, y, z, w).
- `TDM_GetPlayerHealth()`
  - **Returns** the player's health.

## Vehicle Related
- `TDM_GetPlayerVehicle(iPlayer)`
  - **Returns** the player's vehicle if they are in one, nil otherwise.
- `TDM_GetVehiclePosition()`
  - **Returns** the vehicle's position (x, y, z).
- `TDM_GetVehicleRotation()`
  - **Returns** the vehicle's rotation (x, y, z, w).
- `TDM_SetPlayerVehicle(iPlayer, iVehicle)`
  - **Returns** true if successful, false otherwise.
- `TDM_SetVehiclePosition(iVehicle, x, y, z)`
  - **Returns** true if successful, false otherwise.
- `TDM_SetVehicleRotation(iVehicle, x, y, z, w)`
  - **Returns** true if successful, false otherwise.