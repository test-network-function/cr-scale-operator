#!/bin/bash

oc patch memcached banashri -p '{"spec":{"size": 5}}' --type=merge
