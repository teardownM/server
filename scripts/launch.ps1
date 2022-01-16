$Host.UI.RawUI.WindowTitle = "TeardownM - server";

write-host "
  _                     _                     __  __ 
 | |                   | |                   |  \/  |
 | |_ ___  __ _ _ __ __| | _____      ___ __ | \  / |
 | __/ _ \/ _` | '__/ _` |/ _ \ \ /\ / / '_ \| |\/| |
 | |_  __/ (_| | | | (_| | (_) \ V  V /| | | | |  | |
  \__\___|\__,_|_|  \__,_|\___/ \_/\_/ |_| |_|_|  |_|

  by Alexandar Gyurov, Daniel W, Malte0621, Casin

  Build: 0.0.0 unstable
  Gamemode: sandbox

  Report any bugs to: https://github.com/teardownM/server

" -foreground blue

try {
    Get-Process 'com.docker.proxy' -ErrorAction Stop > $null
    write-host "[SUCCESS] Found docker" -foreground green
}
catch {
    write-host "[ERROR]: An instance of Docker could not be found. Please ensure it is running.`n" -foreground red
    Read-Host -Prompt "Press enter to exit"
    exit
}


if ((docker ps -aqf "name=^teardownM-nakama$") -eq $null) {
    write-host "[INFO]: Could not find teardownM docker container" -foreground yellow
    write-host "[INFO]: Creating docker container from docker-compose.yml" -foreground yellow

    docker-compose -p TEARDOWN_M up
    Read-Host -Prompt "Press enter to exit"
}
else {
    write-host "[SUCCESS] Found teardownM-nakama container" -foreground green
    docker restart (docker ps -aqf "name=^teardownM-nakama$") | Out-Null
    write-host "[SUCCESS] Docker container restarted" -foreground green
    write-host "[INFO] Connecting to container..." -foreground yellow

    docker logs -f --tail 10 (docker ps -aqf "name=^teardownM-nakama$" )
}

