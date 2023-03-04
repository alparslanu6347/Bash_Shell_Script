# Write a function called odd_even that has one parameter and
# takes a list of numbers as an argument. The function returns the 
# difference between the largest even number in the list and the 
# smallest odd number in the list. For example, if you pass 
# [1,2,4,6] as an argument the function should return 6 -1= 5.


# odd_even () {
#     max=0
#     min=10000
#     for i in ${1}
#     do
#         echo $i
#         if [ $i -gt $max ]
#         then
#             $max=$i
#             echo $max
#         else
#             continue
#         fi
#     done

#     for i in ${1}
#     do
#         if [ $i -lt $min ]
#         then
#             $min=$i
#             echo $min
#         else
#             continue
#         fi
#     done
    
#     #echo $max
#     #echo $min

# }


# odd_even 2 4 6 8 12 20

odd_even() {
  # Initialize variables to store the min odd number and max even number
  min_odd=-1
  max_even=-1

  # Iterate through the numbers in the list
  for num in "$@"; do
    # Check if the number is odd
    if [ $((num % 2)) -ne 0 ]; then
      # Update the min odd number if needed
      if [ $num -lt $min_odd ] || [ $min_odd -eq -1 ]; then
        min_odd=$num
      fi
    # The number is even
    else
      # Update the max even number if needed
      if [ $num -gt $max_even ] || [ $max_even -eq -1 ]; then
        max_even=$num
      fi
    fi
  done

  # Calculate and return the difference between the min odd and max even numbers
  echo $((max_even - min_odd))
}

# Test the function
odd_even 1 2 4 6