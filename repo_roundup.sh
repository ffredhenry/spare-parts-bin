#!/bin/bash

# this enumerates directories with a .git file present
# and calls 'git status' command. Next, the output is 
# printed to the console

#for each dir in pwd:
#	check for .git existence using '-e' recursively
#	if found, add to an internal list defined outside loop

#for each dir in found_list:
#	run the git status command in the directory (abs/relative?)
#	log to the console

# Function to check and run git status
check_git_status() {
    if [ -d ".git" ]; then
        echo "Found Git repository in: $PWD"
        git status
        echo "-------------------------------------"
    fi
}

# Recursive function to traverse directories
traverse_directories() {
    for dir in "$1"/*; do
        if [ -d "$dir" ]; then
            cd "$dir"
            check_git_status
            traverse_directories "$dir"
            cd ..
        fi
    done
}

# Start traversal from the current directory
traverse_directories $1

echo "Script completed."

