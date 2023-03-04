#!/bin/bash

# # Write a function called even_or_average that ask a user to
# input five numbers. Once the user is done, the code should
# return the largest even number in the inputted numbers. If
# there is no even number in the list, the code should return the
# average of all the five numbers.

even_or_average() {
  # Initialize variables
  max_even=0
  total=0
  count=0

  # Get input from user
  echo "Enter five numbers:"
  while read num; do
    # Check if the number is even
    if [[ $((num % 2)) -eq 0 ]]; then
      # Update the maximum even number if necessary
      if [[ num -gt max_even ]]; then
        max_even=num
      fi
    fi

    # Add the number to the total and increment the count
    total=$((total + num))
    count=$((count + 1))

    # Stop looping once we have inputted five numbers
    if [[ count -eq 5 ]]; then
      break
    fi
  done

  # Check if there was an even number
  if [[ max_even -gt 0 ]]; then
    # Print the maximum even number
    echo "Largest even number: $max_even"
  else
    # Calculate and print the average of the numbers
    average=$((total / count))
    echo "Average of numbers: $average"
  fi
}

even_or_average