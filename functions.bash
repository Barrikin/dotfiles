# colored man pages
man() {
    env LESS_TERMCAP_mb=$'\E[01;31m' \
    LESS_TERMCAP_md=$'\E[01;38;5;74m' \
    LESS_TERMCAP_me=$'\E[0m' \
    LESS_TERMCAP_se=$'\E[0m' \
    LESS_TERMCAP_so=$'\E[01;33;03;40m' \
    LESS_TERMCAP_ue=$'\E[0m' \
    LESS_TERMCAP_us=$'\E[04;38;5;146m' \
    man "$@"
}

whatsgoingon() {
    for i in $(find . -maxdepth 1 -type d | sed -e 's/\.\///' -e '/\./d'); do
        pushd $i >/dev/null
        echo "$(tput bold)$i$(tput sgr0)"
        if [ -z "$(git status --porcelain)" ]; then
            echo "is clean"
        else
            git status -s
        fi
        popd >/dev/null
    done
}

# Colormap
function colormap() {
  for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done
}