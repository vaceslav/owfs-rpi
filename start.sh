#!/bin/bash
/usr/bin/owfs -c /etc/owfs.conf
/usr/bin/owhttpd -c /etc/owfs.conf
/usr/bin/owserver -c /etc/owfs.conf --foreground
