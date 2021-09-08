<!-- !!! DO NOT EDIT, THIS FILE IS GENERATED AUTOMATICALLY !!!  -->

> :information_source: Please, see the full project documentation here: [https://softvisio.github.io/proxy/](https://softvisio.github.io/proxy/).

# Introduction

Proxy service for docker swarm.

## Install

Use `docker-stack.yaml` and `.config.yaml` files, provided in this repository.

```shell
# mark node for deployment
docker node update --label-add proxy=true <NODE-NAME>

# deploy
docker stack deploy --with-registry-auth -c docker-stack.yaml proxy
```

## Usage

Proxy connect url: `http://username:password@hostname:port/`, where:

-   `username` <string\>
-   `password` <string\> Your passwod.
-   `hostname` <string\> Hostname.
-   `port` <integer\> Port.

`Username` parameter can contain additional options, which can be added using comma separator:

-   `zone` <string\> Zone name.
-   `country` <string\> Country ISO2 code.
-   `state` <string> US state code.
-   `city` <string\> City name.
-   `resolve` <boolean\> If `true`, target hosts will be resolved on the proxy server.
-   `session` <string\> Session id.
-   `rotateRequests` <integer\> Rotate proxy after specified number of the requests.
-   `rotateTimeout` <integer\> Rotate proxy after specified timeout in milliseconds.
-   `rotateRandom` <boolean\> Rotate proxies in the random ordere.

Boolean parameters can have `"true"`, `"false"` or no value. If boolean parameteer is present but value is not defined it will be set to the `"true"`.

```text
...,parameter,...       # value of parameter is "true"
...,parameter-true,...  # "true"
...,parameter-false,... # "false"
```

Proxy connect url examples:

```text
http://username,zone-test,country-us,resolve,session-1234567890,rotateRequests-10,rotateTimeout-10000,rotateRandom-false:password@test.com:54930/

```
