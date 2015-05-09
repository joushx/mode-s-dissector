# mode-s-dissector
A wireshark dissector for Mode-S aircraft transmissions.

![screenshot](https://raw.githubusercontent.com/joushx/mode-s-dissector/master/screenshot.png)

## Patch

Apply the patch file to [dump1090](https://github.com/MalcolmRobb/dump1090.git) so it will send raw bytes instead of hex strings on port 30002.

## Listen

Consume the raw byte stream with a TCP client e.g. netcat: `nc localhost 30002`

## Install dissector

Copy the lua file to `~/.wireshark/plugins/`.

## Run

Start wireshark and listen on the loopback interface

## Warning

This script is very alpha and constains a lot of bugs and even more unfinished things. It should not harm your computer but may displays wrong information.
