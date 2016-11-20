export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PATH=$PATH:/Applications/Sublime\ Text.app/Contents/SharedSupport/bin
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin
export PS1="\h\$ "

if [ ! -d $HOME/workspace ]; then
  echo -e "Creating $HOME/workspace"
  mkdir -p $HOME/workspace/go
fi
export GOPATH=$HOME/workspace/go
export PGDATA=/Users/dawei/Library/Application\ Support/Postgres/var-9.4

source ~/.aliases
