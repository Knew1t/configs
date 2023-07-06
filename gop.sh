function gop {
    cd $(ls -ltdc ~/projects/* | grep ^d | head -n 1 | awk '{ print $9}')
}
