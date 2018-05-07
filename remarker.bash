#!/bin/bash

set -euo pipefail

printUsage() {
    cat <<'EOF'
remarker.bash - Manage remarker projects

commands:
    build [ OUTFILE ]: Build the html file.
    show: open the html file with xdg-open
    add TITLE [ SLIDE_POSITION ]: Add a slide with title TITLE
EOF
}

dumpPresentation() {
    declare -r presentation_file="$1"

    cat > "$presentation_file"
}

fillTemplate() {
    declare -r template_file="$1"
    
    if ! [[ -f $template_file ]]; then
        echo 'Template file "%s" not found. Stopping templat fill.\n' "$template_file"

        return 1
    fi

    declare -r slides="$(cat)"

    while IFS='' read -r line; do
        if [[ $line == *([[:blank:]])'[[[@@@@ SLIDES @@@@]]]'*([[:blank:]]) ]]; then
            echo "$slides"

            continue
        fi
        
        echo "$line"
    done < "$template_file"
}

##
# Concatenate the slides into the html file
build() {
    declare -r template_file="$1"
    declare -r presentation_file="$2"

    if ! [[ -d ./slides ]]; then
        echo 'Did not find a slide-directory, stopping build' >&2
        
        return 1
    elif [[ $(ls -1 ./slides | wc -l) -eq 0 ]]; then
        echo 'No slides in slide dir, stopping build.' >&2

        return 1
    fi

    declare -a slides=()
    while read -r slide; do
        [[ -n $slide ]] || continue

        slides[${#slides[@]}]="$slide"
    done < slidesfile

    for i in ${!slides[@]}; do
        cat "./slides/${slides[$i]}"
        echo -e '\n---\n'
    done | fillTemplate "$template_file" | dumpPresentation "$presentation_file"
}


execute() {
    if [[ $# -eq 0 ]]; then
        printUsage

        return
    fi

    case "$1" in
        build)
            build ./assets/template.html ./presentation.html
            echo 'Build done.'
            ;;
        show)
            xdg-open ./presentation.html
            ;;
        add)
            :
            ;;
        help)
            printUsage
            ;;
        *)
            printf 'This script does not implement command "%s"\n' "$1"
    esac
}

execute "$@"
