# Micro Intro to Unix


# What is the difference between Unix and Linux?

Unix (predecessor of Linux) is proprietary with its own centralised operating system kernel, is developed by At&T Bell labs and can be used only by its copyright owners.

Linux is a free and open-source monolithic kernel developed by Linus Torvalds and is not an OS in itself; it is usually paired with GNU, an opensource collection of software to make it GNU+Linux, which is the popular version out there instead of the GNU’s existing HURD system or Mach kernel.

Unlike GNU/Linux, we cant get Unix’s kernel separately; it is always packaged with the Unix operating system.

# What is MINIX? And who is the Author?

Minix is a Unix-like operating system with a microkernel architecture. Unlike Unix, it is developed by Andrew Tanenbaum and is made accessible and opensource under BSD licenses. It was initially created for educational purposes, but it has evolved into much more. Today Minxx plays an important role in the Intel management engine present in every Intel processor

# Who is the author of Linux? What is the relationship between Linux and MINIX?

Linux Torvalds is the author of the Linux kernel, while stallman was behind GNU. Torvalds used Minix and the GNU C Compiler to write the Linux Kernel.

# Command to display Kernel Version**

		uname -r

# Command to know kernel is stable or not?

The command uname -r returns in an x.y.z format like 5.15.15-76051515-generic

if y is even, then the version is stable; if it’s odd, then it’s a development version.

# Command to change your working directory to /etc.**

		cd /etc

# What kind of files are inside the /etc directory?

It has a lot of startup files and config files which have the settings to control the operations of programs, utilities or processes.

    Using  "-ltr" 

**ls -ltr**

When operator -ltr is used, it returns additional details of the files like type flag, size, owner and group name, links, access for users/groups and others instead of just returning the names like the ls command.


# Difference between "-r" and "-R"?

The utility of -r is to copy the directory recursively, meaning all the sub directories are also copied

There is no difference between these two commands. -r and -R are identical in Linux

# Using -n:

		cat -n /etc/group

The utility of -n is to number each line of the output. Without -n only contents are listed out.

# Understanding File Permissions Commands

Assuming  initial permissions on file.txt as (-rwxrwxrwx). 

One notation adds the permissions on previous while the other assigns irrespective of prior permissions.

The difference between both types is that the first one uses specific syntax +/- to add or remove permissions, while the second one uses simplified numeric notation.

		chmod ugo+rw file.txt

* *Permissions after command are -rwxrwxrwx* 

nothing changed as the everyone already has all permissions for the file, and using ugo+rw to add read-write permissions wouldn’t change anything.

		chmod 666 file.txt

* *Permissions after command are -rw-rw-rw-*

Read and Write (4+2); hence 666 has assigned read and write permissions to the user group and others irrespective of the previous permissions.

The difference between both the commands is that the first one uses specific syntax +/- to add or remove permissions, while the second one uses simplified numeric notation.

**Similarily**

If initial permissions are (-rwxr--r--). 

		chmod ugo+rw file.txt

* *Permissions after the command are -rwxrw-rw-.*

Read and Write permissions are added to everyone who didn’t have them already

		chmod 620 file.txt

* *Permissions after the command are -rw—w----.*

With the numeric notation, Read and write (4+6) are assigned to user and Write (2) is set to a group, and nothing (0) is trusted by others irrespective of the previous permissions.

# Difference between -a and -A

		ls -a

		ls -A

ls -a lists all files and directories, including the hidden ones and “.” and “..”

ls -A is similar but excludes the directories “.” ”..” but still shows the hidden ones which start with “.” and “..”

# Using "-p" 

		mkdir -p dir1/subdir1/small

The -p option ensures that the command is executed without error even if the specified parent directories don’t exist. It created them if they do not live already.

# Using "%s" 

		date +%s

%s  option returns seconds since 1970-01-01 00:00:00 UTC to the current date

# Shortcut types and commands

Create a hard link called "hshortcut" for the file "file.txt"

		ln  file hshortcut

Create a soft link called "ssorthcut" for the file "file.txt"

		ln -s file ssorthcut

# Utility of "-lwc" 

		wc -lwc file.txt

Their utility is to specify the type of count needed in wc command; in the options -lwc  c prints the byte counts and w prints the word count while l prints the newline counts.

# Command to display only the last but one line 

		tail -n 2 file.txt | head -n 1



# Types of Loops in BASH

**For Loop**
		
		for [condition]
		do
		action
		done
**Example**

		for x in a b c
		do
		echo “x is $x”
		done

**While Loop**

		while [condition]
		do
		[actions]
		done
**Example**
		
		while [$i -gt 2]
		do
		echo value: $1
		((i++))
		done
**Until Loop**

		until [condition]
		do
		[actions]
		done

**Example**

		until [ $i -gt 2]
		do
		echo value: $1
		((i++))
		done
**Select Loop**
		
		select [condition]
		do
		[actions]
		done
**Example**
		
		select e in list
		do
		echo “$e”
		done
		while [condition]
		do

**While Shift**

		shift [position]
		done
		example
		while(($#)) ; do
		echo "The 1st arg is: ==$1=="
		shift
		done

**example**
		
		while(($#)) ; do
		echo "val: $1"
		shift
		done

# Using "-s", "-n", "-t", "-p" with read command:

**1) read -s var**

-s option masks the data written into the terminal with the read command. (ideal for passwords)

**2) read -n 8 var**

-n option returns after reading the given n characters

**3) read -t 2 var**

-t option is used to time out input after the given number of seconds

**4) read -p "Could you please enter the value of the variable :"** var

-p is used to produce a given prompt before taking the input from read.

# Difference between ";", "||", "&&"
		
		ls -l ; mkdir directory; cd directory; touch f{1..9}
* *with “ ; ” the following command is executed if the first one fails or not.*

		ls -l file.txt || echo the file does not exist
* *with “ ||,” the following command is executed only if the first command fails*

		ls -l file.txt && echo the file exist
* *with “&&”; the following command is executed only if the first command is successful.*






# If fruits=(apple banana pear orange) explain the below outputs

		echo ${#fruits}
		
		5

 * *it returned the number of elements in the word string fruits.*

		echo ${#fruits[@]}

		4

* *used the syntax to return the number of elements in the array.*

		echo ${#fruits[0]}

		5

* *used the syntax to return the length of 0th element in the array.*

		echo ${#fruits[1]}

		6

* *used the syntax to return the length of 1st element in the array.*

		echo ${#fruits[2]}

		4

* *used the syntax to return the length of 2nd element in the array.*

		echo ${#fruits[3]}

		6

* *used the syntax to return the length of 3rd element in the array.*

		echo ${fruits[@]:3}

		orange

* *used the syntax to return the third element in the array same as echo ${fruits[3]}*
		
		echo ${fruits[@]:2:3}

		pear orange

* *used the syntax to print elements staring from 2 until 3.*

# Bash Array Commands

**Add the element "aa" at the beginning of the table**

		fruits=( "aa" "${fruits[*]}" )

**Add the element "gg" at the end of the table**

		fruits=( "${fruits[*]}" "gg" )

**Add the element "dd" in the middle**

		fruits=( "${fruits[@]:0:2}" "dd" "${fruits[@]:2}" )

