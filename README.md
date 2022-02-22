Provision public key to servers
```
docker run --rm -it -v "$HOME/.ssh/id_ed25519.pub:/root/.ssh/id_ed25519.pub" -v "$HOME/.ssh/known_hosts:/root/.ssh/known_hosts" -e CONFIG="myuser@host1|myuser@host2" ssh-socks-proxy provision
```

Start proxy
```
docker run -d -v "$HOME/.ssh/id_ed25519:/root/.ssh/id_ed25519" -v "$HOME/.ssh/known_hosts:/root/.ssh/known_hosts" -e CONFIG="myuser@host1|myuser@host2" -p 4445:4445 ssh-socks-proxy
```
