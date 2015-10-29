#!/bin/bash

block_list() {
  ip_list=list/$1
  for ip in $(cat $ip_list);
    do iptables -A INPUT -s $ip -j DROP;
  done
}

iptables -F

for ip_list in $(ls list); do
  block_list $ip_list
done
