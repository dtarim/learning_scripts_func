#!/bin/bash

update_readme() {
    local FILE=$1
    local CITY=$2
    local TEMPERATURE=$3

    if [[ ! -f "$FILE" ]]; then
        echo "Error: $FILE does not exist!"
        exit 1
    fi

    if [[ "$OSTYPE" == "darwin"* ]]; then
        sed -i '' "s/^$CITY : .*/$CITY : $TEMPERATURE/" "$FILE"
    else
        sed -i "s/^$CITY : .*/$CITY : $TEMPERATURE/" "$FILE"
    fi

    if ! grep -q "^$CITY :" "$FILE"; then
        echo "$CITY : $TEMPERATURE" >> "$FILE"
    fi

    echo "File is updated to $CITY : $TEMPERATURE"
}

update_readme "$1" "$2" "$3"
