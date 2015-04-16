harbor/ghost
------------

A very simple container for the [Ghost](https://ghost.org/) blogging platform.


Example crane.yaml
------------------

``` yaml
containers:
  ghost-example:
    image: harbor/ghost:latest
    run:
      detach: true
      env-file: ["environment"]
      publish: ["2368:2368"]
      restart: always
      volume: ["config.js:/ghost/config.js"]
```
