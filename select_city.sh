#!/bin/bash

select_city() {
    local CITIES=("Yalova" "Karabuk" "Eindhoven" "Amsterdam" "Kocaeli")
    local MINUTE=$(date +%M)
    local INDEX=$((10#$MINUTE % ${#CITIES[@]}))  # 10# ekleyerek ondalık sistemde hesaplama yapıyoruz
    echo "${CITIES[$INDEX]}"
}
# call func
select_city
