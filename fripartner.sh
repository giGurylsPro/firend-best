#!/bin/bash

ifconfig sit0 up
ifconfig sit0 inet6 tunnel ::216.66.38.58
ifconfig sit1 up
ifconfig sit1 inet6 add 2001:470:1c:145::2/64
route -A inet6 add ::/0 dev sit1
ip -6 route add local 2001:470:1c:145::/64 dev lo
