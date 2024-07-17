# IF ELSE STATEMENT

## Syntax
    if [ <comparison> ]
    then
    <statements>
    elif [ <comparison> ]
    then
    <statements>
    else
    <statements>
    fi

## Operators
### Comparison Operators
**Numeric Comparison**

- -eq: Equal
- -ne: Not equal
- -lt: Less than
- -le: Less than or equal to
- -gt: Greater than
- -ge: Greater than or equal to

*Example:*

    if [ "$a" -eq "$b" ]; then
       echo "a is equal to b"
    fi

**String Comparison**

- =: Equal
- !=: Not equal
- <: Less than (in ASCII alphabetical order)
- \>: Greater than (in ASCII alphabetical order)
- -z: String is null, that is, has zero length
- -n: String is not null

*Example:*

    if [ "$str1" = "$str2" ]; then
      echo "str1 is equal to str2"
    fi

### File Test Operators

- -e: File exists
- -f: File is a regular file (not a directory or device)
- -d: File is a directory
- -h or -L: File is a symbolic link
- -r: File is readable
- -w: File is writable
- -x: File is executable
- -s: File is not empty
- -O: File is owned by the user
- -G: File is owned by the group
- -N: File was modified since it was last read
*Example:*

    if [ -e "$file" ]; then
      echo "File exists"
    fi

### Logical Operators

- &&: Logical AND
- ||: Logical OR
- !: Logical NOT

*Example:*

    if [ "$a" -eq "$b" ] && [ "$c" -eq "$d" ]; then
      echo "Both conditions are true"
    fi

### Compound Comparison

You can use compound comparisons with [[ ]] which allows more flexibility and is less error-prone for some conditions, especially string comparisons.

*Example:*

    if [[ "$str1" == "$str2" && "$num1" -gt "$num2" ]]; then
      echo "Both string and numeric conditions are true"
    fi

### Arithmetic Evaluation

- -eq, -ne, -lt, -le, -gt, -ge (already mentioned under Numeric Comparison)
- (( )): Arithmetic evaluation, useful for numeric conditions and supports standard arithmetic operators.

*Example:*

    if (( a < b )); then
      echo "a is less than b"
    fi

## Examples of if Statements in Bash
### Checking if a File Exists

    if [ -f "/path/to/file" ]; then
      echo "File exists."
    else
      echo "File does not exist."
    fi

### Numeric Comparison

    a=10
    b=20
    if [ $a -lt $b ]; then
      echo "a is less than b"
    else
      echo "a is not less than b"
    fi

### String Comparison

    str2="world"
    str1="hello"

    if [ "$str1" != "$str2" ]; then
      echo "Strings are not equal"
    else
      echo "Strings are equal"
    fi

### Logical AND

    if [ -f "/path/to/file1" ] && [ -f "/path/to/file2" ]; then
      echo "Both files exist."
    else
      echo "One or both files do not exist."
    fi

### Logical OR

    if [ -f "/path/to/file1" ] || [ -f "/path/to/file2" ]; then
      echo "At least one file exists."
    else
      echo "Neither file exists."
    fi