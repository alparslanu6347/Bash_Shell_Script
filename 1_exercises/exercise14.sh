#!/bin/bash

# ## Write a function called zeroed code that takes a list of numbers 
# as an argument. The code should zero (0) the first and the last 
# number in the list. For example, if the input is [2, 5, 7, 8, 9],
# your code should return [0, 5, 7, 8, 0]



zeroed() {
  # Zero the first and last element of the list
  numbers[0]="0"
  numbers[-1]="0"
  echo "${numbers[@]}"
}

zeroed 2 5 7 8 9