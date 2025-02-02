# Personal aliases
#alias nvim='nvim.appimage'
alias vim='nvim'
alias open=xdg-open

alias go_single='sudo systemctl isolate multi-user.target'
alias go_graphical='sudo systemctl isolate graphical.target'

alias edital='nvim ~/.bash_aliases'
alias noconda='conda deactivate'
alias sd='cd /opt/sd;ll'
alias h='history'
alias calc='gnome-calculator'
alias lib='cd /mnt/library/;ls -al'
alias work='cd /mnt/work/;ls -al'
alias perso='cd /mnt/perso/;ls -al'
alias nv=nvidia-smi
alias top=htop
alias o=open

alias resolve=/opt/resolve/bin/resolve

alias da=date

alias x='chmod +x'

# Alias's to modified commands
#alias cp='cp -i'
#alias mv='mv -i'
#alias rm='trash -v'
#alias mkdir='mkdir -p'
alias psa='ps auxf'
alias ping='ping -c 10'
alias less='less -R'
alias cls='clear'
alias apt-get='sudo apt-get'
alias multitail='multitail --no-repeat -c'
alias freshclam='sudo freshclam'
alias vi='vim'

alias svi='sudo vi'
alias vis='vim "+set si"'

# Alias's for multiple directory listing commands
alias la='ls -Alh'                # show hidden files
alias ls='ls -aFh --color=always' # add colors and file type extensions
alias lx='ls -lXBh'               # sort by extension
alias lk='ls -lSrh'               # sort by size
alias lc='ls -ltcrh'              # sort by change time
alias lu='ls -lturh'              # sort by access time
alias lr='ls -lRh'                # recursive ls
alias lt='ls -ltrh'               # sort by date
alias lm='ls -alh |more'          # pipe through 'more'
alias lw='ls -xAh'                # wide listing format
alias ll='ls -Fls'                # long listing format
alias labc='ls -lap'              # alphabetical sort
alias lf="ls -l | egrep -v '^d'"  # files only
alias ldir="ls -l | egrep '^d'"   # directories only
alias lla='ls -Al'                # List and Hidden Files
alias las='ls -A'                 # Hidden Files
alias lls='ls -l'                 # List

# Gix git issues
alias git_setup='eval "$(ssh-agent -s)"; ssh-add ~/.ssh/id_ed25519_git'

# Search running processes
alias p="ps aux | grep "
alias topcpu="/bin/ps -eo pcpu,pid,user,args | sort -k 1 -r | head -10"

# Search files in the current folder
alias f="find . | grep "

# Count all files (recursively) in the current folder
alias countfiles="for t in files links directories; do echo \`find . -type \${t:0:1} | wc -l\` \$t; done 2> /dev/null"

# To see if a command is aliased, a file, or a built-in command
alias checkcommand="type -t"

# Show open ports
alias openports='netstat -nape --inet'

# Alias's for safe and forced reboots
alias rebootsafe='sudo shutdown -r now'
alias rebootforce='sudo shutdown -r -n now'

# Alias's to show disk space and space used in a folder
alias diskspace="du -S | sort -n -r |more"
alias folders='du -h --max-depth=1'
alias folderssort='find . -maxdepth 1 -type d -print0 | xargs -0 du -sk | sort -rn'
alias tree='tree -CAhF --dirsfirst'
alias treed='tree -CAFd'
alias mountedinfo='df -hT'

# Alias's for archives
alias mktar='tar -cvf'
alias mkbz2='tar -cvjf'
alias mkgz='tar -cvzf'
alias untar='tar -xvf'
alias unbz2='tar -xvjf'
alias ungz='tar -xvzf'

# Show all logs in /var/log
alias logs="sudo find /var/log -type f -exec file {} \; | grep 'text' | cut -d' ' -f1 | sed -e's/:$//g' | grep -v '[0-9]$' | xargs tail -f"

ftext() {
  # -i case-insensitive
  # -I ignore binary files
  # -H causes filename to be printed
  # -r recursive search
  # -n causes line number to be printed
  # optional: -F treat search term as a literal, not a regular expression
  # optional: -l only print filenames and not the matching lines ex. grep -irl "$1" *
  grep -iIHrn --color=always "$1" . | less -r
}

# aws instances
alias aws_connect='aws ssm start-session --target i-057c6163914a9059c --profile twds-marvel-studios-nonprod --region us-west-2'
alias aws_start='aws ec2 start-instances --instance-ids i-057c6163914a9059c --profile twds-marvel-studios-nonprod --region us-west-2'
alias aws_stop='aws ec2 stop-instances --instance-ids i-057c6163914a9059c --profile twds-marvel-studios-nonprod --region us-west-2'
alias aws_status='aws ec2 describe-instance-status --instance-ids i-057c6163914a9059c --profile twds-marvel-studios-nonprod --region us-west-2'
# marvel aliases
alias mount_roc="sudo mount -t cifs //roc-vfx-la.marvelstudios.loc/roc-vfx /mnt/roc/ -o username='alongaro@marvelstudios.loc'"
alias mrv_connect='sudo gpclient connect remote.marvelstudios.com'
