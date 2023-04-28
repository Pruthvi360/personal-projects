#!/usr/bin/env bash

Threshold=60
File_system=$(df -h | grep -vE "udev|tmpfs|none |)