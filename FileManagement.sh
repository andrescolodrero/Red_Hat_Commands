# INPUT, OUTPUT, ERROR
# Avoid errors in a command
ls -il /etc/* 2> /dev/null 
# Override Alias
> alias cp
alias cp='cp -i'

# to override Alias
\cp file file2
