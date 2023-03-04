#!/bin/bash

# Display the top 10 processes by memory usage
ps aux --sort=-%mem | head -n 11
