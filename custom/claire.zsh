# Shortcuts
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias p="cd ~/projects"
alias macvim="open -a MacVim"

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# Get OS X Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
alias update='mas outdated; mas upgrade; brew update; brew upgrade --all; brew cleanup; npm install npm -g; npm update -g; sudo gem update --system; sudo gem update'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# git info
GIT_AUTHOR_NAME="Claire Griffin"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="clairetg@stanford.edu"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"

# Flush Directory Service cache
alias flush="dscacheutil -flushcache && killall -HUP mDNSResponder"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# Canonical hex dump; some systems have this symlinked
command -v hd > /dev/null || alias hd="hexdump -C"

# Trim new lines and copy to clipboard
alias c="tr -d '\n' | pbcopy"

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Merge PDF files
# Usage: `mergepdf -o output.pdf input{1,2,3}.pdf`
alias mergepdf='/System/Library/Automator/Combine\ PDF\ Pages.action/Contents/Resources/join.py'

# Disable Spotlight
alias spotoff="sudo mdutil -a -i off"
# Enable Spotlight
alias spoton="sudo mdutil -a -i on"

# developer paths
JAVA7_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_76.jdk/Contents/Home
JAVA8_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_102.jdk/Contents/Home
export JAVA_HOME=$JAVA8_HOME

export ANT_HOME=/usr/local/Cellar/ant/1.9.7/libexec
export MAVEN_HOME=/usr/local/Cellar/maven/3.3.9/libexec
export GRADLE_HOME=/usr/local/Cellar/gradle/2.14/libexec

# lockss support
export PROJECTS_DIR=/Users/claire/projects
export LOCKSS_DIR=/Users/claire/projects/lockss
export DAEMON_DIR=/Users/claire/projects/lockss/lockss-daemon
export LAAWS_DIR=/Users/claire/projects/lockss/laaws
export SWAGGER_CODEGEN=/Users/claire/projects/gitrepos/swagger-codegen/modules/swagger-codegen-cli/target

alias genswagger='java -jar $SWAGGER_CODEGEN/swagger-codegen-cli.jar'
alias lockss='cd $LOCKSS_DIR'
alias lockssd='cd $DAEMON_DIR'
alias run1dc='cd $DAEMON_DIR/test/frameworks/run_one_daemon_clockss'
alias run1d='cd $DAEMON_DIR/test/frameworks/run_one_daemon'
alias laaws='cd $LAAWS_DIR'
