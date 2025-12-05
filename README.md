# 📝 Worksheet 1 — Assembly Programming (Full Report)

## 📚 Course: Operating Systems / Assembly Programming   
## 📁 Worksheet: 1  
## 🛠️ Language Used: x86 Assembly (NASM) + C (driver)

## Overview
This project contains solutions for Worksheet 1.  
It demonstrates using NASM assembly with C, loops, conditions, arrays, and Makefiles.

---

## 📌 Introduction
This worksheet focuses on understanding **basic x86 assembly**, interacting with the system using NASM, and linking assembly routines with a C driver using GCC.  
The tasks include performing arithmetic operations, loops, user input handling, string handling, and computing numerical ranges.

This document explains:
- Each task in detail  
- The logic behind all programs  
- How to compile & run  
- Folder structure  
- Common errors & fixes  
- Screenshots section  


## Folder Structure
- `src/` – C and Assembly source files  
- `doc/screenshots/` – output screenshots  
- `Makefile` – builds all tasks  
- `README.md` – documentation

---

# 🧰 Tools Used

| Tool | Purpose |
|------|---------|
| NASM | Assembly compiler |
| GCC | Linking assembly + C driver |
| asm_io.inc | Helper routines for printing and reading |
| Makefile | Automates build process |
| Linux terminal | Execution environment |

---

## How to Build

# 🔵 **Task 1 — Basic Arithmetic (Increment Input)**

### 🎯 Goal  
Take a number from the user → increment it → print result.

### 🔍 Steps  
1. Ask user for an integer  
2. Store input in a register (eax)  
3. Add 1 to the number  
4. Print the incremented result  

![alt text](<Screenshot 2025-12-05 123918.png>)

### 🧠 Skills Learned  
- Using `print_string`, `read_int`, `print_int`  
- Moving data between registers  
- Math operations in assembly (`add eax, 1`)

---

# 🔵 **Task 1.2 — Printing a Fixed Sequence (Looping)**

### 🎯 Goal  
Print numbers from **1 to N** using a loop.

### 🔍 Steps  
1. Initialize loop counter (mov ecx, N)  
2. Print current number  
3. Decrement counter  
4. Loop until counter reaches zero  

![alt text](<Screenshot 2025-12-05 123948.png>)

### 🧠 Skills Learned  
- `ecx` as loop counter  
- Using labels & jumps  
- Calling I/O routines inside loops  

---

# 🟢 **Task 2.1 — Print a Name N Times**

### 🎯 Goal  
Input:
- A **name** (string)  
- A **number N** (50–100)  

Then print the name **N times**.

### 🔍 Steps  
1. Read string using `read_string`  
2. Read number using `read_int`  
3. Loop N times and print the name  
4. Print newline each time  

![alt text](<Screenshot 2025-12-05 124041.png>)

### 🧠 Skills Learned  
- String input handling  
- String memory buffer usage  
- Repeated printing with loops  

---

# 🟢 **Task 2.2 — Sum of a Range**

### 🎯 Goal  
Ask user for:
- Start number  
- End number  

Compute:
```
start + (start+1) + ... + end
```

![alt text](<Screenshot 2025-12-05 124121.png>)

### 🔍 Example  
Input:
```
6
8
```
Output:
```
21
```

### 🧠 Skills Learned  
- Conditional loops  
- User-driven range logic  
- Register arithmetic  

---

# 🟢 **Task 2.3 — Sum from 1 to 100**

### 🎯 Goal  
Compute:
```
1 + 2 + 3 + ... + 100
```

### 🔍 Steps  
1. Initialize sum = 0  
2. Loop from 1 to 100  
3. Add loop index to sum  
4. Print the sum  

![alt text](<Screenshot 2025-12-05 124143.png>)

### ✔️ Expected Output  
```
5050
```

### 🧠 Skills Learned  
- Accumulation in registers  
- Integer loops  
- Final output formatting  

---


# 🛠️ Makefile Explanation

The Makefile:
- Compiles all `.asm` files  
- Compiles driver.c  
- Links them into executables  
- Produces `task1`, `task1_2`, `task2_name`, etc.

### 💡 Main Commands  
```
nasm -f elf src/task1.asm -o src/task1.o
gcc -m32 src/driver.o src/task1.o src/asm_io.o -o task1
```

### 🧹 Clean build files:
```
make clean
```

---


