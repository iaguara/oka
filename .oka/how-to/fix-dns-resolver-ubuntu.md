# Fix DNS resolver on Ubuntu 18

## Disable default DNS resolver

```shell
sudo systemctl disable systemd-resolved
sudo systemctl stop systemd-resolved
```


## Modify NetworkManager.conf

```shell
sudo vim /etc/NetworkManager/NetworkManager.conf
```

Add the following lines:

```
[main]
  dns=none
  rc-manager=unmanaged
```


## Re-creates resolv.conf

```shell
sudo mv /etc/resolv.conf /etc/resolv.conf.orig
echo "\
nameserver=172.66.1.1\
nameserver=8.8.8.8\
nameserver=8.8.4.4\
" | sudo tee -a /etc/resolv.conf
```


## Restart network-manager

```shell
sudo service network-manager restart
```

