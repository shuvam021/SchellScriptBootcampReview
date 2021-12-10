#!bin/bash

# Question02
# arrayOfNumbers=(23 45 64 71 37)
# traverse above array and check each element whether even or odd.
# Also check each element prime or not

is_prime() {
    local flag=1
    for ((i = 2; i <= $1 / 2; i++)); do
        if (($1 % $i == 0)); then
            flag=0
        fi
    done
    echo $flag
}

arrayOfNumbers=(23 45 64 71 37)
for element in ${arrayOfNumbers[@]}; do
    isPrime=$(is_prime $element)
    (($isPrime != 0)) && echo "$element is a prime no" || echo "$element is a not prime no"
    (($element % 2 == 0)) && echo "$element is even" || echo "$element is odd"
    echo '================================================'
done
