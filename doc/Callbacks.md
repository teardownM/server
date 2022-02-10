## Callbacks
```lua
-- Called when the server is ready
function OnInitialized()

end

-- Called on server shutdown
function OnShutdown()

end

-- Client is connecting to the server
function OnClientConnecting(clientID)
    ...
end

-- Client has successfully connected
function OnClientConnected(clientID)
    ...
end

-- Client has left the server
function OnClientDisconnect(clientID)
    ...
end

-- Called every frame
function Tick(deltaTime)
    ...
end

-- Called two times every frame
function Update(deltaTime)
    ...
end
```
