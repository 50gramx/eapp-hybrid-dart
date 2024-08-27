#!/usr/bin/expect -f

set timeout -1
set password "apple"

spawn /usr/local/bin/brew install multipass

expect {
    "Password:" {
        send "$password\r"
        exp_continue
    }
    eof
}

# Ensure the script waits for the command to finish
wait
