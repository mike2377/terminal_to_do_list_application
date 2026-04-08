#!/bin/bash

# File for tasks
TASKS_FILE="tasks.txt"

# Creates tasks.txt if it doesn’t exist
if [ ! -f "$TASKS_FILE" ]; then
    touch "$TASKS_FILE"
fi

# Check provide command
if [ $# -eq 0 ]; then
    echo -e "\033[0;34m Usage: ./todo.sh [add or list or  del] [arguments] \033[0m"
    echo -e "\033[0;34m Commands:"
    echo -e "\033[0;34m  add \"task\"  - Add a new task \033[0m"
    echo -e "\033[0;34m  list        - Displays all tasks with line numbers \033[0m"
    echo -e "\033[0;34m  del NUMBER  - Delete task by number \033[0m"
    exit 1
fi

# argument command
COMMAND="$1"

# case for diferent command
case "$COMMAND" in
    add)
        # Check if the task isn't provide
        if [ -z "$2" ]; then
            echo -e "\033[0;31m Error: Please provide task text \033[0m"
            echo -e "\033[0;33m Example: ./todo.sh add \"Buy milk\" \033[0m"
            exit 1
        fi
        # Appends the task text to a file named tasks.txt
        echo "$2" >> "$TASKS_FILE"
        echo -e "\033[0;33m Task add:\033[0m \033[0;32m  $2 \033[0m"
        ;;
    
    list)
        # Check if tasks exist on file task.txt
        if [ ! -s "$TASKS_FILE" ]; then
            echo -e "\033[0;33m No tasks found. Add a task with: ./todo.sh add \"Your task\" \033[0m"
            exit 0
        fi
        # Displays all tasks with line numbers
        echo -e "\033[0;34m Your tasks: \033[0m"
        echo -e "\033[0;32m$(nl -w2 -s'. ' "$TASKS_FILE")\033[0m"
        ;;
    
    del)
        # Check if number provided and delete task
        if [ -z "$2" ]; then
            echo -e "\033[0;31m Error: Please provide task number to delete \033[0m"
            echo -e "\033[0;33m Example: ./todo.sh del 2 \033[0m"
            exit 1
        fi
        
        # number valid
        if ! [[ "$2" =~ ^[0-9]+$ ]]; then
            echo -e "\033[0;31m Error: Please provide a valid number \033[0m"
            exit 1
        fi
        
        # total task number
        TOTAL_TASKS=$(wc -l < "$TASKS_FILE")
        
        # Check if task number exist
        if [ "$2" -gt "$TOTAL_TASKS" ] || [ "$2" -lt 1 ]; then
            echo -e "\033[0;31m Error: Task number $2 doesn't exist \033[0m"
            echo -e "\033[0;32m Total tasks: $TOTAL_TASKS \033[0m"
            exit 1
        fi
        
        # Delete
        sed -i "${2}d" "$TASKS_FILE"
        echo -e "\033[0;31m Task $2 deleted \033[0m"
        ;;
    
    clear)
        # Clear all
        true > "$TASKS_FILE"
        echo -e "\033[0;32m All tasks cleared \033[0m"
        ;;
    
    *)
        # verify invalid command
        echo -e "\033[0;31m Error: Unknown command '$COMMAND' \033[0m"
        echo -e "\033[0;33m Valid commands: add, list, del, clear \033[0m"
        exit 1
        ;;
esac