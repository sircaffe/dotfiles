list=(
    .emacs.local
    .emacs
    .emacs.custom.el
)

# Logging Functions
log() {
    echo -e "[\e[32mLOG\e[0m]: $1"
}
err() {
    echo -e "[\e[31mERROR\e[0m]: $1"
}
