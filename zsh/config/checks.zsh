# checks (stolen from zshuery)
if [[ $(uname) = 'Linux' ]]; then
    IS_LINUX=1
    if [[ -x `which yum` ]]; then
        HAS_YUM=1
    elif [[ -x `which apt-get` ]]; then
        HAS_APT=1
    fi
fi
