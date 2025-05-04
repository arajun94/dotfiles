#!/bin/bash

sudo apt install wine
sudo dpkg --add-architecture i386 && sudo apt update && sudo apt install wine32:i386