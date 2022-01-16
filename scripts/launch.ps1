$Host.UI.RawUI.WindowTitle = "TeardownM - server";

try {
    Import-Module powershell-yaml -ErrorAction Stop
}
catch {
    write-host "[INFO]: powershell-yaml is not installed" -foreground yellow
    write-host "[INFO]: Attempting to install powershell-yaml. Please say 'YES' to all" -foreground yellow
    Install-Module powershell-yaml -Scope CurrentUser
    write-host "[SUCCESS]: Installed 'powershell-yaml'" -foreground green
}

try {
    [string[]]$fileContent = Get-Content "./gamemodes/config.yml" -ErrorAction Stop
}
catch {
    write-host "[ERROR]: Could not find ./gamemodes/config.yml. Please ensure the file exists." -foreground red
}

$content = ''
foreach ($line in $fileContent) { $content = $content + "`n" + $line }
$yaml = ConvertFrom-YAML $content

$title = $yaml.title
$gamemode = $yaml.gamemode
$version = $yaml.version
$debug = $yaml.debug
$public_ip = $yaml.public_ip
$map = $yaml.map

$Host.UI.RawUI.WindowTitle = "TeardownM - $title - $gamemode - $map - v$version";

write-host "
  _                     _                     __  __ 
 | |                   | |                   |  \/  |
 | |_ ___  __ _ _ __ __| | _____      ___ __ | \  / |
 | __/ _ \/ _` | '__/ _` |/ _ \ \ /\ / / '_ \| |\/| |
 | |_  __/ (_| | | | (_| | (_) \ V  V /| | | | |  | |
  \__\___|\__,_|_|  \__,_|\___/ \_/\_/ |_| |_|_|  |_|

  by Alexandar Gyurov, Daniel W, Malte0621, Casin

  Build: 0.0.0 unstable

  Title: $title
  Gamemode: $gamemode
  Version: $version
  Debug: $debug
  Public IP: $public_ip
  Map: $map

  Report any bugs to: https://github.com/teardownM/server/issues

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

if ($null -eq (docker ps -aqf "name=^teardownM-nakama$")) {
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

Read-Host -Prompt "Press enter to exit"
