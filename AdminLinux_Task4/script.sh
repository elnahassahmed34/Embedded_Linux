#!/bin/bash

username="yourName"
groupname="FamilyName"

# Check if the user already exists
if id "$username" &>/dev/null; then
    echo "User '$username' already exists."
else
    # Create the user
    sudo useradd "$username"
    echo "User '$username' created."

    # Check if the group already exists
    if getent group "$groupname" &>/dev/null; then
        echo "Group '$groupname' already exists."
    else
        # Create the group
        sudo groupadd "$groupname"
        echo "Group '$groupname' created."
    fi

    # Add the user to the group
    sudo usermod -aG "$groupname" "$username"
    echo "User '$username' added to group '$groupname'."

    # Display user and group information
    id "$username"
    getent group "$groupname"
fi

