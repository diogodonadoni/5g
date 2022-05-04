#!/bin/bash

ovs-vsctl set Bridge s1 protocols=OpenFlow13
ovs-vsctl set Bridge s2 protocols=OpenFlow13
ovs-vsctl set Bridge s3 protocols=OpenFlow13
ryu-manager ryu.app.rest_router
