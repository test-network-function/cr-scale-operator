#!/bin/bash

oc patch memcached memcached-sample -p '{"spec":{"size": 3}}'  --type=merge

