#Write two functions. The first function is called count_words
# which takes a string of words and counts how many words are in 
# the string. 

# The second function called count_elements takes a string of 
# words and counts how many elements are in the string. Do not 
# count the whitespaces. The first function will return the number 
# of words in a string and the second one will return the number 
# of elements (less whitespace). If you pass ‘I love learning’, 
# the count_words function should return 3 words and 
# count_elements should return 13 elements

count_words () {
      count=0
    for i in ${x[@]}
    do
        count=$( expr $count + 1 )
    done
    echo "$count words"
}

count_elements () {
    count=0
    for i in ${x[@]}
    do
        #echo ${#i}
        count=$( expr $count + ${#i} )
    done
    echo "$count elements"
}

x="I love learning"
count_words x
count_elements x