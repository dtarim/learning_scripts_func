 #!/bin/bash

main() {
    # working 1.script and select city
    CITY=$(./select_city.sh)

    # working 2.scriot and get weather
    TEMPERATURE=$(./get_weather.sh "$CITY")

    # working 3.script and update readme file
    ./update_readme.sh "README.md" "$CITY" "$TEMPERATURE"
}

# calling main func
main
