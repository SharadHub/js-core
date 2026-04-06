#!/bin/bash

# Script to commit each JS Core learning module individually

# Function to commit a folder with a message
commit_folder() {
    local folder="$1"
    local message="$2"
    
    echo "Adding: $folder"
    git add "$folder"
    
    echo "Committing: $message"
    git commit -m "$message"
    echo "---"
}

# Commit each learning module
commit_folder "1.Variables/" "feat: add Variables module - let, const, var and scope basics"
commit_folder "2.Call Stack/" "feat: add Call Stack module - execution context and stack management"
commit_folder "3.Hoisting/" "feat: add Hoisting module - variable and function hoisting behavior"
commit_folder "4.DataType/" "feat: add Data Types module - primitives and reference types"
commit_folder "5.Functions/" "feat: add Functions module - declarations, expressions, and arrow functions"
commit_folder "6.operators/" "feat: add Operators module - arithmetic, comparison, logical operators"
commit_folder "7.Array and Object/" "feat: add Arrays and Objects module - data structures fundamentals"
commit_folder "8.Array Method/" "feat: add Array Methods module - map, filter, reduce, and more"
commit_folder "9.EventListener/" "feat: add Event Listeners module - DOM event handling"
commit_folder "10.Shortest JS Program/" "feat: add Shortest JS Program module - global execution context"
commit_folder "11.Scope chain and Lexical Env./" "feat: add Scope Chain module - lexical environment and scope chain"
commit_folder "12.Block Scope/" "feat: add Block Scope module - let, const block-level scope"
commit_folder "13.Closures/" "feat: add Closures module - function scope retention and practical uses"
commit_folder "14.setTimeout/" "feat: add setTimeout module - delayed execution and timers"
commit_folder "15.CallBack Function/" "feat: add Callback Functions module - passing functions as arguments"
commit_folder "16.Event Loop/" "feat: add Event Loop module - async JavaScript and concurrency model"
commit_folder "17.CallBack Hell/" "feat: add Callback Hell module - nested callback problems"
commit_folder "18.Promises/" "feat: add Promises module - async operations with Promise API"
commit_folder "19.Promise Chaining Error Handling/" "feat: add Promise Chaining module - sequential async and error handling"
commit_folder "Transactional Order Processing Engine/" "feat: add Transactional Order Processing Engine - real-world JS project"
commit_folder "README/" "docs: add README documenting JS Core learning journey"

echo "All modules committed!"
echo "Pushing to origin main..."
git push -u origin main
echo "Done!"
