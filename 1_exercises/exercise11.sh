#!/bin/bash

## # Create a function called my_discount. The function takes no
# arguments but asks the user to input the price and the
# discount (percentage) of the product. Once the user inputs the
# price and discount, it calculates the price after the discount.
# The function should return the price after the discount. For
# example, if the user enters 150 as price and 15% as the discount,
# your function should return 127.5.

my_discount(){
    read -p "please enter the price: " price
    read -p "please enter the discount: " discount
    let discountet_price=(price*discount)/100
    let last_price=$price-$discountet_price
    echo "last price that you should pay is : $last_price"

}

my_discount