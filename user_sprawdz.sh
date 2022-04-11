

if id $1 &>/dev/null; then
    last $1
else
    echo 'user not found' >&2
fi


