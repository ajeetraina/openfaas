# Getting Started with OpenFaas

## Preparing Your Environment

- Open https://labs.play-with-docker.com/
- Click on login & start
- Click on tool near the setting on the left side of PWD interface

![My image](http://collabnix.com/wp-content/uploads/2018/04/PWD1-1536x768.png)

- Choose 3 Managers and 2 workers and allow it to bring up 5 node cluster

![My image](http://collabnix.com/wp-content/uploads/2018/04/PWD2.png)


## Bringing Up the Visualizer

```
cd openfaas/visualizer/
docker-compose up -d
```

## Verifying the port the visualizer is running on

```
$ docker ps
CONTAINER ID        IMAGE                             COMMAND             CREATED             STATUS              PORTS                    NAMES05b89b6b8aa9        dockersamples/visualizer:stable   "npm start"         56 seconds ago      U
p 55 seconds       0.0.0.0:8085->8080/tcp   visualizer_visualizer_1
```

As shown, it is running on port 8085. Open up browser to see the fancy visualizer tool.

![My image](http://collabnix.com/wp-content/uploads/2018/04/PWD4.png)<br>

![My image](http://collabnix.com/wp-content/uploads/2018/04/PWD5.png)

## Cloning the OpenFaas Repository:

```
git clone https://github.com/openfaas/faas
cd faas
./deploy_stack.sh
```

This will setup OpenFaas Stack

## Installing faas-cli

```
curl -sL cli.openfaas.com | sh
```

```
$ faas-cli list
Function                        Invocations     Replicas
func_wordcount                  0               1func_hubstats                   0               1
func_base64                     0               1func_echoit                     0               1
func_markdown                   0               1tcpdump                         8               1
func_nodeinfo                   1               1[manager1] (local) root@192.168.0.151 ~
$
```

Next: [Building Retweet Serverless Function using OpenFaas](https://github.com/ajeetraina/openfaas/tree/master/functions/retweet-bot/README.md)
