# 🐧 Bash Scripting Bootcamp: 18 Practical Projects

This repository documents my journey through a **Project-Based Bash Scripting Bootcamp**. It contains 18 hands-on scripts designed to solve real-world system administration and automation challenges using Linux Shell.

## 🚀 Overview

These projects demonstrate a progression from basic shell interaction to advanced system monitoring and automation. Each script focuses on core DevOps skills such as:

- **System Administration:** Package management and user privilege checks.  
- **Automation:** Batch processing images and logging data.  
- **Monitoring:** Server health checks and real-time clocks.  
- **Scripting Concepts:** Loops, Arrays, Conditional Logic, I/O Redirection, and Colorized Output.  

## 📂 Project List

| # | Project Name | Description | Key Concepts |
|---|---|---|---|
| 01 | **Random Quote Generator** | Displays a motivational or random quote upon execution. | Arrays, Randomization ($RANDOM) |
| 02 | **Password Generator** | Generates secure, random passwords for user accounts. | String Manipulation, Hashing |
| 03 | **Digital Clock** | A real-time digital clock displayed directly in the terminal. | `while` loops, `sleep`, `date` command |
| 04 | **System Maintenance** | Automates system updates, upgrades, and cleanup of unused packages. | `apt` package manager, chaining commands |
| 05 | **Root User Checker** | Verifies if the current user has root privileges before running sensitive tasks. | Conditional Logic (`if-else`), UID checks |
| 06 | **Bulk Package Installer** | Installs multiple software packages via a loop, with colorized output and error handling. | Arrays, `for` loops, ANSI Colors, Error Handling |
| 07 | **Batch Image Processor** | Automates processing (renaming/converting) of image files in a directory. | File globbing, String substitution |
| 08 | **File Inspector** | Analyzes a specific file and provides detailed metadata (size, type, permissions). | File test operators, `stat` command |
| 09 | **Employee Data Logger** | Captures user input and saves it to a CSV format for record-keeping. | `read` input, I/O Redirection (`>>`) |
| 10 | **Server Health Monitor** | Reports CPU load, memory usage, and disk space utilization. | `top`, `free`, `df`, `awk` |
| 11 | **Colorful Terminal Output** | Prints a colorful greeting and system info with ANSI colors and simple animation. | ANSI Colors, Loops, `echo -e`, Terminal Formatting |
| 12 | **Lockbox: File/Directory Encryption** | Encrypts or decrypts files and directories using AES-256 with OpenSSL and tar. | `openssl`, `tar`, Conditional Logic, Input Validation |
| 13 | **Compare Files** | Compares two files to check if they are identical or different and shows differences. | `cmp`, `diff`, Argument Handling, Conditional Logic |
| 14 | **Search Files** | Searches for files by name pattern recursively in a directory. | `find`, Pattern Matching, Default Arguments |
| 15 | **Arithmetic Operations** | Performs basic arithmetic operations (addition, subtraction, multiplication, division) on two numbers. | `$(( ))` Arithmetic, `case` Statements, Input Validation |
| 16 | **Diamond Dot Pattern** | Generates a scalable diamond pattern using dots (`.`) in the terminal. | Nested Loops, Printing, Pattern Generation |
| 17 | **Sort Files** | Sorts files in a directory by name, type, or size, displaying results or organizing them. | `ls`, Loops, `case` Statements, File Properties |
| 18 | **Syntax Checker** | Checks the syntax of a Bash or Shell script without executing it. | `bash -n`, `sh -n`, Shebang Parsing, Conditional Logic |

---

## 🛠️ Installation & Usage

1. **Clone the repository:**
   ```bash
   git clone https://github.com/surajw141/bash-scripting-practices.git
   cd bash-scripting-practices

## 🤝 Connect
If you found these scripts helpful or have suggestions for optimization, feel free to reach out!

GitHub: [surajw141](https://github.com/surajw141)

Portfolio: [Suraj's Portfolio](https://surajw141.github.io/portfolio/)
