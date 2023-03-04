#!/bin/bash

read -p "enter day & month: " login_day login_month

last | grep "$login_day $login_month"
