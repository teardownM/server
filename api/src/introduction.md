<center><h1>Introduction</h1></center>
Thanks for choosing TeardownM for your multiplayer server, here we show you how to use it.

## Creating a server
- Requirements:
  - [TeardownM Server](https://github.com/teardownM/server)
  - [Docker](https://www.docker.com/)

Next, we need to setup the server. To do this, open your command line in the server directory and run the following command:<br>
`./scripts/setup.sh` - Linux<br>
`./scripts/setup.ps1` - Windows

You should now be able to connect to the server, default port: `7350`. You can change this port by editing the `docker-compose.yml` file.