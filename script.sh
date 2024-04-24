#!/bin/bash

# This script checks the memory usage, CPU load, number of TCP connections, and kernel version.
# Set the server name
server_name=$(hostname)

# Function: memory_check()
#
# This function checks the memory usage and prints it to the console.
#
# Returns:
#   None
memory_check() {
    echo ""
    echo "Memory usage on ${server_name} is: "
    free -h
    echo ""
}

# Function: cpu_check()
#
# This function checks the CPU load and prints it to the console.
#
# Returns:
#   None
cpu_check() {
    echo ""
    echo "CPU load on ${server_name} is: "
    echo ""
    uptime
    echo ""
}

# Function: tcp_check()
#
# This function checks the number of TCP connections and prints it to the console.
#
# Returns:
#   None
tcp_check() {
    echo ""
    echo "TCP connections on ${server_name}: "
    echo ""
    cat /proc/net/tcp | wc -l
    echo ""
}

# Function: kernel_check()
#
# This function checks the kernel version and prints it to the console.
#
# Returns:
#   None
kernel_check() {
    echo ""
    echo "Kernel version on ${server_name} is: "
    echo ""
    uname -r
    echo ""
}

# Function: all_checks()
#
# This function calls all the check functions to print the memory usage, CPU load, number of TCP connections, and kernel version to the console.
#
# Returns:
#   None
all_checks() {
    memory_check
    cpu_check
    tcp_check
    kernel_check
}



# Call the all_checks() function
all_checks