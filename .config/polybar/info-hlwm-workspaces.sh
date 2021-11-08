#!/usr/bin/env bash

# jang nomor workspace
# menang nyudog bash script na wkwk

herbstclient --idle "tag_*" 2>/dev/null | {

    while true; do
        IFS=$'\t' read -ra tags <<< "$(herbstclient tag_status)"
        {
            for i in "${tags[@]}" ; do
                case ${i:0:1} in
                    '#')
                        echo "%{F#000}%{B#FFE4E1}%{U#FFE4E1}" # Add your formatting tags for empty workspaces
                        ;;
                    ':')
                        echo "%{F#000}%{B#BFB8AA}" # Add your formatting tags for empty workspaces
                        ;;
                    '!')
                        ;;
                    '-')
                        echo "%{F-}%{B#764E29}" # Add your formatting tags for empty workspaces
                        ;;
                    *)
                        echo "%{F-}%{B-}" # Add your formatting tags for empty workspaces
                        ;;
                esac

                echo "%{A1:herbstclient use ${i:1}:}  ${i:1}  %{A -u -o F- B-}"
            done

            echo "%{F-}%{B-}"
        } | tr -d "\n"

    echo

    read -r || break
done
} 2>/dev/null
