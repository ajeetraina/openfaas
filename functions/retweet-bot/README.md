# How to build Retweet Serverless Function using OpenFaas

## Pre-requisite:

[Follow this guide](https://github.com/ajeetraina/openfaas/blob/master/README.md)


## Writing Retweet Function

```
mkdir -p ~/retweet && \
  cd ~/retweet
```
## The "Retweet" Python function using the CLI:


```
root@ubuntu18:~/retweet# faas-cli new --lang python retweet
Folder: retweet created.
  ___                   _____           ____
 / _ \ _ __   ___ _ __ |  ___|_ _  __ _/ ___|
| | | | '_ \ / _ \ '_ \| |_ / _` |/ _` \___ \
| |_| | |_) |  __/ | | |  _| (_| | (_| |___) |
 \___/| .__/ \___|_| |_|_|  \__,_|\__,_|____/
      |_|


Function created in folder: retweet
Stack file written: retweet.yml
root@ubuntu18:~/retweet#
```

This creates 3 major files, 2 of them under retweet and 1 YAML file as shown:

```
retweet# tree
.
├── retweet.py
└── requirements.txt

0 directories, 2 files

```

Replace handler.py, requirements.txt with these above files and add config from the repository under the same location.


## Displaying contents of retweet.yml
```
root@ubuntu18:~/retweet# cat retweet.yml
provider:
  name: faas
  gateway: http://127.0.0.1:8080

functions:
  retweet:
    lang: python
    handler: ./retweet
    image: retweet

```

## Building the Function

```
cd ..
faas-cli build -f ./retweet.yml
```

## Verifying the Image
```

docker images | grep retweet
ajeetraina/retweet          latest              027557a5185d        About a minute ago   83MB

```

## Deploying the Retweet Function

 ```
 faas-cli deploy -f ./retweet.yml
Deploying: retweet.

Deployed. 200 OK.
URL: http://127.0.0.1:8080/function/retweet
```
Now open up localhost:8080/ui and watch out for brand new retweet function. Clik on Invoke and there you find retweet bot active to display you hashtags.

Next: [Turn any CLI to function]()

