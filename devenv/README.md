# Usage
docker build -t _ImageName_

1. Prepare host directory to mount as HOME
2. mkdir .config/code-server
3. copy config.yaml into there and set your password
4. run with params below

```
# docker run -p "_your-vscode-port_:8080" -p "_your-webserver(to dev)-port_:8888" -e "PGID=_your-host-groupid_" -e "PUID=_your-host-user-id_" --name _container-name_ _ImageName_
```