#!/bin/bash

get_weather() {
    local CITY=$1
    curl -s "https://wttr.in/$CITY?format=%t"
}


get_weather "$1"
