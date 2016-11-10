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
