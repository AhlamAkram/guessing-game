

#!/bin/bash

# Function to count files in the current directory
function count_files() {
    find . -maxdepth 1 -type f | wc -l
}

# Get the correct number of files
number=$(count_files)

echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"

# Keep asking until the answer is correct
while true
do
    read -p "Enter your guess: " guess

    # Check if the input is a valid number
    if ! [[ "$guess" =~ ^[0-9]+$ ]]
    then
        echo "Please enter a valid number."
    elif [ "$guess" -lt "$number" ]
    then
        echo "Your guess is too low. Try again!"
    elif [ "$guess" -gt "$number" ]
    then
        echo "Your guess is too high. Try again!"
    else
        echo "Congratulations! You guessed the correct number!"
        break
    fi
done
