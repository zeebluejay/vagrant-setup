
########################
# ENVIRONMENT VARIABLES
########################

# Customizing the PATH 
#######################


# Change Command Prompt
########################

#####################################################################################
# To learn more about how to add special characters to PS1, use the following URLs:
# 1. http://www.thegeekstuff.com/2008/09/bash-shell-ps1-10-examples-to-make-your-linux-prompt-like-angelina-jolie/
# 2. UTF-8 characters reference: http://unicode-table.com/en
# 3. UTF-8 Tool: http://www.ltg.ed.ac.uk/~richard/utf-8.cgi?input=e2+94+9c&mode=bytes
#####################################################################################

# Option 1
# export PS1="\n\[\033[0;37m\]\342\224\214\342\224\200\$([[ \$? != 0 ]] && echo \"[\[\033[0;31m\]\342\234\227\[\033[0;37m\]]\342\224\200\")[$(if [[ ${EUID} == 0 ]]; then echo '\[\033[0;31m\]\h'; else echo '\[\033[0;33m\]\u\[\033[0;37m\]@\[\033[0;96m\]\h'; fi)\[\033[0;37m\]]\342\224\200[\[\033[0;32m\]\w\[\033[0;37m\]]\n\[\033[0;37m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\033[0m\]" 

# Option 2
# export PS1="\n\[\033[1;37m\]\342\224\214($(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]\h'; else echo '\[\033[0;33m\]\u\[\033[0;37m\]@\[\033[0;96m\]\h'; fi)\[\033[1;37m\])\342\224\200(\$(if [[ \$? == 0 ]]; then echo \"\[\033[01;32m\]\342\234\223\"; else echo \"\[\033[01;31m\]\342\234\227\"; fi)\[\033[1;37m\])\342\224\200(\[\033[1;34m\]\@ \d\[\033[1;37m\])\[\033[1;37m\]\n\342\224\224\342\224\200(\[\033[1;32m\]\w\[\033[1;37m\])\342\224\200(\[\033[1;32m\]\$(ls -1 | wc -l | sed 's: ::g') files, \$(ls -lah | grep -m 1 total | sed 's/total //')b\[\033[1;37m\])\342\224\200> \[\033[0m\]"

# Option 3: Three line with first two displaying info and third has prompt
export PS1="\n\[\033[1;37m\]\342\224\214(\[\033[0;33m\]\u\[\033[0;37m\]@\[\033[0;96m\]\h\[\033[1;37m\])\342\224\200($(if [[ $? == 0 ]]; then echo "\[\033[01;32m\]\342\234\223"; else echo "\[\033[01;31m\]\342\234\227"; fi)\[\033[1;37m\])\342\224\200(\[\033[1;34m\]\@ \d\[\033[1;37m\])\[\033[1;37m\]\n\342\224\234(\[\033[1;32m\]\w\[\033[1;37m\])\342\224\200(\[\033[1;32m\]$(ls -1 | wc -l | sed 's: ::g') files, $(ls -lah | grep -m 1 total | sed 's/total //')b\[\033[1;37m\]) \[\033[0m\]\n\[\033[1;37m\]\342\224\224\342\224\200\342\226\272 \[\033[0m\]"

##########
# ALIASES
##########

# ls alias for color-mode
alias lls='ls -lhaG'

# lock computer
alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'

# up 'n' folders
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# simple ip
alias ip="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# grep with color
alias grep='grep --color=auto'

# Go to dev folder
alias cddev='cd ~/dev'
