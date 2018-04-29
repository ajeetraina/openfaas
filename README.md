# Setting up OpenFaas 

## Pre-requisite:

- Play with Docker

## Clone this repository


```
https://github.com/ajeetraina/openfaas
```

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

As shown, it is running on port 8085.

## Cloning the OpenFaas Repository:

```
git clone https://github.com/openfaas/faas
cd faas
./deploy_stack.sh
```

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

## Test Driving Retweet function

```
cd 
cd faas/functions
