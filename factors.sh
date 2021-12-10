#!bin/bash

# Question 01
# takes input number from user and find all the factors of that number.
# Push all factors inside an array and display the complete array

read -p "insert a nuber for checking its factorial: " input
declare -a arrayofFactor

withHelpOfCoreCommand() {
    counter=0
    factorialString=$(factor $input | cut -d ':' -f 2)
    for num in ${factorialString[@]}; do
        if [ -z $num ]; then
            echo "it is a space"
        else
            arrayofFactor[$counter]=$num
            ((counter++))
        fi
    done
    echo ${arrayofFactor[@]}
}

withOutHelpOfCommand() {
    for ((i = 1; i <= $input; i++)); do
        if (($input % $i == 0)); then
            arrayofFactor[$counter]=$i
            ((counter++))
        fi
    done
    echo ${arrayofFactor[@]}
}

# withHelpOfCoreCommand
withOutHelpOfCommand
