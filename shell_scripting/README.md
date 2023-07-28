# Shell scripting
## Examples
### Only even numbers - Demonstration of exit codes
The script starts with the shebang #!/bin/bash, indicating that it should be interpreted using the Bash shell.

Two functions are defined in the script: greet() and check_even_odd(). The greet() function takes one argument (name) and displays a greeting with that name. The check_even_odd() function takes one argument (a number) and checks if it's even or odd.

In the main part of the script, the user is prompted to enter a number. The check_even_odd() function is then called, passing the entered number as an argument.

The check_even_odd() function determines whether the number is even or odd and returns an exit code of 0 for even and 1 for odd.

The exit code of the last command (i.e., the check_even_odd() function) is captured in the variable exit_code.

The script then displays the exit code to demonstrate how to access it.

Finally, the script uses the exit code to check whether the function succeeded or failed and prints an appropriate message.

The script ends.

Remember to make the script executable using chmod +x script_name.sh, and then you can run it with ./script_name.sh in the terminal.
