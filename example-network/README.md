```
$ docker network ls
```

#### The network named bridge is a special network. Unless you tell it otherwise, Docker always launches your containers in this network. Try this now:

```
$ docker run -itd --name=networktest ubuntu
```

#### Inspecting the network is an easy way to find out the container’s IP address.

```
$ docker network inspect bridge
```


#### Create your own network

```
$ docker network create -d bridge my_bridge
```

#### Connect container to own network

```
$ docker run -d --net=my_bridge --name db training/postgres
```


```
$ docker inspect --format='{{json .NetworkSettings.Networks}}'  db
```

#### Run web-app in default network 

```
$ docker run -d --name web training/webapp python app.py
```

```
$ docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' web
```

#### Check connectivity
```
$ docker exec -it db bash
$ docker network connect my_bridge web
```
