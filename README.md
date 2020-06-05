

#### Clone repository over ssh

```
$ git clone git@github.com:benchaminaa/buythisspace-qa-test.git
```

#### Running tests locally
Run following command in your **project directory**

```
$ npm install
$ npm run test
```
#### Running tests with Docker
Run following command in your **project directory**

##### 1. build docker image
```
$ docker build -t oohmedia/apitest:node12-alpine3.10 .
```
##### 2. Create a docker container and run tests
```
$ docker run -it \
  -e "BASE_URL=https://buythisspace.com.au" \
  oohmedia/apitest:node12-alpine3.10 test
``` 