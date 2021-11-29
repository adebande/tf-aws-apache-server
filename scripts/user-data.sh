#!/bin/bash

while ! ping -c 1 -W 1 8.8.8.8; do
    echo "Waiting for internet connection"
    sleep 1
done

sudo apt-get update

sudo apt-get -y install apache2