#!/bin/bash

# Prompt the user to enter a list of usernames separated by spaces
read -p "Enter a list of usernames (separated by spaces): " input_usernames

# Prompt the user to enter a password for the users
read -p "Enter the default password for the all users: " password

# Split the input string into an array of usernames
IFS=' ' read -r -a usernames <<< "$input_usernames"

# Loop through the array and create users
for username in "${usernames[@]}"
do
    # Check if the user already exists
    if id "$username" &>/dev/null; then
        echo "User $username already exists. Skipping..."
        continue
    fi

    # Create the user with default options
    useradd -m "$username"

    # Set the same password for the user
    echo -e "$password\n$password" | passwd "$username"

    echo "User $username created successfully."
done

echo "User creation script completed."
