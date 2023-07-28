#!/bin/bash

# Function to display a greeting
function greet() {
    echo "Hello, $1!"
}

# Function to check if a number is even or odd
function check_even_odd() {
    if (( $1 % 2 == 0 )); then
        echo "$1 is even."
        return 0 # Return exit code 0 for success
    else
        echo "$1 is odd."
        return 1 # Return non-zero exit code for failure
    fi
}

# Main script starts here
echo "This is a basic shell script with functions."

# Call the greet function
greet "John"

# Prompt the user to enter a number
read -p "Enter a number: " num

# Call the check_even_odd function and pass the entered number as an argument
check_even_odd $num

# Capture the exit code of the last command (check_even_odd function)
exit_code=$?

# Display the exit code
echo "Exit code: $exit_code"

# Use the exit code to check if the function succeeded or failed
if [ $exit_code -eq 0 ]; then
    echo "Function succeeded."
else
    echo "Function failed."
fi

# End of the script
