#!/bin/bash

oc patch memcached memcached-sample -p '{"spec":{"size": 0}}' --type=merge
