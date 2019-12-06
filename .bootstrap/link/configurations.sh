#!/bin/zsh

autoload colors; colors

# Collect configurations
cfgs=()
for d in configurations/*; do
    cd "$d" &&
    printf "%-.200s [%s]\n" "$fg[green]${d}$reset_color................................" "Register"
    while IFS='' read -r line; do cfgs+=("$line"); done < <(node -p "require('./package.json').name")
    npm link &&
    cd ../..
done

# Bootstrap configurations
for d in {applications,orchestrators}/*; do
    cd "$d" &&
    cd "frontend" || exit
    for i in "${cfgs[@]}"; do
      printf "%-.200s [%s]\n" "$fg[green]${d}$reset_color in ${i}................................" "Bootstrap"
      npm link "$i"
    done
    cd ../../..
done

for d in libraries/*; do
    cd "$d" &&
    for i in "${cfgs[@]}"; do
      printf "%-.200s [%s]\n" "$fg[green]${d}$reset_color in ${i}................................" "Bootstrap"
      npm link "$i"
    done
    cd ../..
done