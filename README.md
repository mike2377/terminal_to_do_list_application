# 📝 Bash To-Do List Terminal App

A beginner Bash project that implements a simple command-line To-Do List manager.
The script stores tasks in a text file and allows users to add, list, delete and clear tasks directly from the terminal.
This project focuses on arguments, file handling and basic Bash logic.

---

## 🎯 Project Goals

This project aims to:

Practice Bash scripting fundamentals
Work with text files in Bash
Use command-line arguments
Use conditional statements (if / case)
Build a small but real CLI productivity tool

---

## The script allows you to

Add tasks, List tasks, Delete tasks, Clear all tasks, Validate user input and display helpful terminal messages.

---

## 🛠 Tech Stack

**Language**
-Bash (Shell scripting)

**Linux command-line tools Used**
-echo
-touch
-nl
-sed
-wc

**Other Tools**
-Git & GitHub

---

## 🖥 Features

-Add new tasks from the terminal
-Display tasks with automatic numbering
-Delete a task by its number
-Clear all tasks instantly
-Automatically creates tasks.txt if missing
-Input validation and error handling
-Color-coded terminal output
-Clean and simple CLI interface

## 📷 Example Usage

![Add task](https://raw.githubusercontent.com/mike2377/bash-todo-cli/main/assets/images/add.png)

![List tasks](https://raw.githubusercontent.com/mike2377/bash-todo-cli/main/assets/images/list.png)

![Delete task](https://raw.githubusercontent.com/mike2377/bash-todo-cli/main/assets/images/delete.png)

## Clone the repository

git clone <https://github.com/mike2377/terminal_to_do_list_application.git>
cd terminal_to_do_list_application

Give execution permission to the script:

chmod +x todo.sh

Run the script:

./todo.sh

---

## 📁 Project Structure

terminal_to_do_list_application/
├── assets/
│   └── images/
│       ├── add.png
│       ├── list.png
│       ├── delete.png
├── tasks.txt
├── todo.sh
└── README.md

🧠 Challenges Faced

Parsing command-line arguments correctly
Validating numeric input in Bash
Deleting specific lines using sed
Formatting colored terminal output
Handling edge cases (empty file, invalid commands)

📚 What I Learned

Writing CLI applications using Bash
Working with text files (append / read / delete)
Using case statements for command parsing
Implementing input validation and error messages
Building user-friendly terminal tools

🚀 Future Improvements

Prevent duplicate tasks
Add timestamps to tasks
Add task priorities

👨🏽‍💻 Author

Kembou Keumoe Ivan Michael
Junior Fullstack Developer
📩 Email: <kman39457@email.com>

🌍 Based in Cameroon | Open to remote opportunities
