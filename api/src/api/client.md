# Client API

## Logging
- `LogVerbose(sMessage)`
- `LogGeneral(sMessage)`
- `LogWarning(sMessage)`

## Player Related
- `TDM_GetPlayers()`
  - **Returns** a table of all players.
- `TDM_GetPlayerCount()`
  - **Returns** the number of players.
- `TDM_IsConnected()`
  - **Returns** true if connected, false otherwise.

## Server Related
- `TDM_GetServerName()`
  - **Returns** the server name if connected, nil otherwise.
- `TDM_GetServerIP()`
  - **Returns** the server IP if connected, nil otherwise.
- `TDM_GetServerPort()`
  - **Returns** the server port if connected, nil otherwise.
- `TDM_GetServerMap()`
  - **Returns** the server map if connected, nil otherwise.

## Miscellaneous
- `TDM_OpenURL(sURL)`
  - Returns true if successful, false otherwise.