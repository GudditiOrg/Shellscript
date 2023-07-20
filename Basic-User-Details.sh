#!/bin/bash

read -p "Enter the Username: " Username
read -p "Enter the Email-id: " Email
read -p "Enter the passcode: " Pass

# Encrypt the passcode to Base64
encrypted_pass=$(echo -n "$Pass" | base64)

# Display the results
echo "Username: $Username" 
echo "Email-id: $Email"
echo "Encrypted Passcode (Base64): $encrypted_pass"

