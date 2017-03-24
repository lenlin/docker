#!/bin/bash

ssserver -s 0.0.0.0 -p $PORT -k $KEY -m aes-256-cfb --user nobody -d start
