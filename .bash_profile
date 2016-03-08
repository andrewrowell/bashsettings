export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
#source ~/.git-prompt.sh
date | cowsay -f stegosaurus
alias ls="ls -la"
parse_gb() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* (.*)/(1)/'
}
export PS1='$PWD (\A)
$(parse_gb) ==> '
