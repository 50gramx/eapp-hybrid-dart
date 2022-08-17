#!/bin/bash

/usr/bin/expect <<EOD
spawn ""
expect "Password:"
send ""
send "\n"
expect eof
EOD