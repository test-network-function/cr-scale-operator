#!/bin/bash

oc patch memcached memcached-sample -n $NAMESPACE -p '{"spec":{"size": 5}}' --type=merge
