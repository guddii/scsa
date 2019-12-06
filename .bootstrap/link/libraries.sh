#!/bin/zsh

autoload colors; colors

# Collect libaries
libs=()
for d in libraries/*; do
    cd "$d" &&
    printf "%-.200s [%s]\n" "$fg[green]${d}$reset_color................................" "Register"
    while IFS='' read -r line; do libs+=("$line"); done < <(node -p "require('./package.json').name")
    npm link &&
    cd ../..
done

# Bootstrap libaries
for d in {applications,orchestrators}/*; do
    cd "$d" &&
    cd "frontend" || exit
    for i in "${libs[@]}"; do
      printf "%-.20s [%s]\n" "$fg[green]${d}$reset_color in ${i}................................" "Bootstrap"
      npm link "$i"
    done
    cd ../../..
done