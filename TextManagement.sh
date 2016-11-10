# basics fro tail, head, tr, cut, awk, seed

# Cut columns
cut -f 3 -d : /etc/passwd
# show column 3 using ":" as separator

# List users by name
cut -f 1 -d : /etc/passwd | sort

# TR: Transalator
echo hello | tr a-z A-Z

# grep
# cd /etc find lisa, case insesitive and exclude errors and binary from the text
grep -iR lisa * 2> /dev/null | grep -v Binary


# tail, head, etc
> get line 5 of passwd
head -n 5 passwd | tail -n 1

# show text root from all files, remove nulls and show 1 column
grep -i root  * 2> /dev/null | cut -f 1 -d :

# show all files with has a line with 5 characters
 grep ^.....$ * 2> /dev/null | grep -v directory


