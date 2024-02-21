#!/bin/bash

kill=0

if [[ "$1" == "-k" ]]; then
    kill=1
elif [[ "$1" == "-h" ]] || [[ "$#" > 1 ]]; then
    echo "Usage: $0 [-k|-h]"
    echo "-k : kill process after detection"
    echo "-h : print this message"
    exit 0
fi

keyLoggerHash="54e253662ec0e7613d14df2d9d5ea112ff5839afe3a35f1472608bd9841d5bbd"
browserExploitHash="d69f4215c479dac954c6e91357974ae3effdba414a6e8e68711c0cdc37ab0a9b"

for pid in /proc/[0-9]*/; do
    pid=${pid/\/proc\//}
    pid=${pid/\//}
    
    exe=$(readlink -f /proc/$pid/exe 2>/dev/null)
    if [ -n "$exe" ] && [ -f "$exe" ]; then
        
        # Key logger
        hash=$(sha256sum "$exe" | awk '{print $1}')
        if [[ "$hash" == *"$keyLoggerHash"* ]]; then
            echo "Key logger - matching hash found for PID: $pid"
            if [ "$kill" = 1 ]; then
                sudo kill "$pid"
                echo "Malicious process with PID=$pid was killed"
            fi
        fi

        # Browser exploit & server (Python part)
        cmd=$(tr -d '\0' < /proc/"$pid"/cmdline)
        user_id=$(stat -c "%U" "/proc/$pid")
        if [[ "$cmd" == *"python"* ]] && [[ "$cmd" == *"main.py"* ]] && [ "$user_id" != "root" ]; then
            filesHash=$(sudo find /proc/"$pid"/cwd/ -type f -name "*.py" -print0 | xargs -0 sudo sha256sum )
            if [[ "$filesHash" == *"$browserExploitHash"* ]]; then
                echo "Browser exploit - matching hash found for PID: $pid"
                if [ "$kill" = 1 ]; then
                    sudo kill "$pid"
                    echo "Malicious process with PID=$pid was killed"
                fi
            fi
        fi
    fi
done