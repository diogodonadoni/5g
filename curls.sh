#!/bin/bash

curl -X POST -d '{"address": "10.0.0.1/24"}' http://0.0.0.0:8080/router/0000000000000001/10
curl -X POST -d '{"address": "192.168.1.2/24"}' http://0.0.0.0:8080/router/0000000000000001/10
curl -X POST -d '{"address": "10.0.0.1/24"}' http://0.0.0.0:8080/router/0000000000000001/110
curl -X POST -d '{"address": "192.168.1.2/24"}' http://0.0.0.0:8080/router/0000000000000001/110
curl -X POST -d '{"gateway": "192.168.1.1"}' http://0.0.0.0:8080/router/0000000000000001/10
curl -X POST -d '{"gateway": "192.168.1.1"}' http://0.0.0.0:8080/router/0000000000000001/110

curl -X POST -d '{"address": "10.0.1.1/24"}' http://0.0.0.0:8080/router/0000000000000003/10
curl -X POST -d '{"address": "192.168.1.3/24"}' http://0.0.0.0:8080/router/0000000000000003/10
curl -X POST -d '{"address": "10.0.1.1/24"}' http://0.0.0.0:8080/router/0000000000000003/110
curl -X POST -d '{"address": "192.168.1.3/24"}' http://0.0.0.0:8080/router/0000000000000003/110
curl -X POST -d '{"gateway": "192.168.1.1"}' http://0.0.0.0:8080/router/0000000000000003/10
curl -X POST -d '{"gateway": "192.168.1.1"}' http://0.0.0.0:8080/router/0000000000000003/110

curl -X POST -d '{"address": "172.16.10.1/24"}' http://0.0.0.0:8080/router/0000000000000002/10
curl -X POST -d '{"address": "192.168.1.1/24"}' http://0.0.0.0:8080/router/0000000000000002/10
curl -X POST -d '{"address": "172.16.10.1/24"}' http://0.0.0.0:8080/router/0000000000000002/110
curl -X POST -d '{"address": "192.168.1.1/24"}' http://0.0.0.0:8080/router/0000000000000002/110


