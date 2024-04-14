#!/bin/bash

servername=$(hostname)

echo $servername

#function to check memory usage
 function memory_check() {
    echo ""
    echo "The current memory usage on ${servername} server is:"
    free -m
 }

 function disk_usage() {
    echo ""
    echo "The current disk usage on ${servername} server is:"
    du -h 
 }

 memory_check 