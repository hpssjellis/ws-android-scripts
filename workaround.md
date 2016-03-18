if ! mkdir /tmp/myscript.lock 2>/dev/null; then
    echo "Myscript is already running." >&2
    exit 1
fi
