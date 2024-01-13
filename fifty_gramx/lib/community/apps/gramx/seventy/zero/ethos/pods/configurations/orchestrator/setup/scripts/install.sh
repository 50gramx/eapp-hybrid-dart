#!/bin/bash

/usr/bin/expect <<EOD
spawn ""
expect "Password:"
send ""
send "\n"
expect "Press RETURN/ENTER to continue or any other key to abort:"
send "\n"
expect eof
EOD