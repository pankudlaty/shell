

if id $1 &>/dev/null; then
    last $1 -F| tail -n +1 | head -n -2 | awk '{print$1,$3,$4,$5}' | uniq -c | awk '{print $2,$3,$4,$5,$1}'
else
    echo 'user not found' >&2
fi


