#!/bin/bash

var1='global 1'
var2='global 2'

echo -e "Before calling function:\nvar1: $var1\nvar2: $var2"
echo
var_scope () {
  local var1='function 1'
  var2='function 2'
  echo -e "Inside function:\nvar1: $var1\nvar2: $var2"
}

var_scope
echo
echo -e "After calling function:\nvar1: $var1\nvar2: $var2"