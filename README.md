# wsl-ubuntu
# init
```shell
curl https://raw.githubusercontent.com/chubbyhippo/wsl-ubuntu/refs/heads/main/init.sh | /usr/bin/env sh
```
# wsl install
```powershell
wsl --install
```
```powershell
wsl --set-default ubuntu
```
# wsl uninstall
```powershell
wsl --unregister ubuntu
```
```powershell
wsl --uninstall
```
```powershell
wsl --list
```
## fix slow sudo apt update, change http to https
```sh
sudo nano /etc/apt/sources.list.d/ubuntu.sources
```
