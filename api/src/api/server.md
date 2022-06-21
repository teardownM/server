# Server API

## Player Related
- `KickPlayer(iPlayer, sReason)`
  - Returns true if successful, false otherwise.
- `BanPlayer(iPlayer, sReason, [opt] iTimeSeconds)`
  - Returns true if successful, false otherwise.
- `TDM_SendMessage(iPlayer, sMessage)`
  - iPlayer: -1 for all players, otherwise the player's ID.
  - **Returns** true if successful, false otherwise.