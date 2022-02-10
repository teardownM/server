## Player Functions

### General
| Function           | Arguments             | Description                     | Return Type  |
| :--------          | :-------              | :-------------------------      | :----------  |
| KickPlayer         | PlayerID, Reason      | Kicks the player for x reason   | None         |
| BanPlayer          | PlayerID, Reason, Length      | Bans the player for x reason    | None         |
| SendPlayerMessage  | PlayerID, Message     | Send the player a message       | None         |

#### Accessors

| Function           | Arguments             | Description                      | Return Type  |
| :--------          | :-------              | :-------------------------       | :----------  |
| GetPlayers         | None                  | Returns all player ID's          | []int        |
| GetPlayerCount     | None                  | Returns the player's count       | int          |
| GetPlayerName      | PlayerID              | Returns the player's name        | string       |
| GetPlayerSteamID   | PlayerID              | Returns the player's steam id    | string       |
| GetPlayerHealth    | PlayerID              | Returns the player's health      | int          |
| GetPlayerTransform | PlayerID              | Returns the player's transform   | transform    |
| GetPlayerPosition  | PlayerID              | Returns the player's position    | vector3      |
| GetPlayerRotation  | PlayerID              | Returns the player's rotation    | quaternion   |
| GetPlayerVelocity  | PlayerID              | Returns the player's velocity    | vector3      |
| GetPlayerHealth    | PlayerID              | Returns the player's health      | int          |
| GetPlayerState     | PlayerID              | Returns the player's state       | EPlayerState |
| GetPlayerVehicle   | PlayerID              | Returns the player's vehicle ID  | int          |

### Modifiers
| Function           | Arguments             | Description                      | Return Type  |
| :--------          | :-------              | :-------------------------       | :----------  |
| SetPlayerHealth    | PlayerID, Int         | Sets the player health           | None         |
| SetPlayerTransform | PlayerID, Transform   | Sets the player's transform      | None         |
| SetPlayerPosition  | PlayerID, Vector3     | Sets the player's position       | None         |
| SetPlayerRotation  | PlayerID, Quaternion  | Sets the player's rotation       | None         |
| SetPlayerVelocity  | PlayerID, Vector3     | Sets the player's velocity       | None         |
| SetPlayerHealth    | PlayerID, Int         | Sets the player's health         | None         |
| SetPlayerVehicle   | PlayerID, Int         | Sets the player's vehicle        | None         |

