#!/bin/bash
sudo kill $(ps aux | grep "omx" | awk '{ print $2 }')
