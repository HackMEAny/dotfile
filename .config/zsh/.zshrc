export ZDOTDIR=$HOME/.config/zsh
[ "$(tty)" = "/dev/tty1" ] && exec dbus-run-session Hyprland
neofetch
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# History in cache directory:
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.cache/zsh_history
setopt appendhistory



# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
 HIST_STAMPS="mm/dd/yyyy"

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Load the zsh-functions file
source "$HOME/.config/zsh/zsh-functions"

# Auto Completions
autoload -Uz compinit 
zstyle ':completion:*' menu select
# zstyle ':completion::complete:lsof:*' menu yes select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Use lf to switch directories and bind it to ctrl-o
lfcd () {
	tmp="$(mktemp)"
        lf-ueberzug -last-dir-path="$tmp" "$@"
        if [ -f "$tmp" ]; then
		dir="$(cat "$tmp")"
		rm -f "$tmp" >/dev/null
                [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
	fi
}

#Plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
#zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "zdharma-continuum/fast-syntax-highlighting"
zsh_add_plugin "zdharma-continuum/history-search-multi-word"
zsh_add_plugin "hlissner/zsh-autopair"
# zsh_add_plugin "yuhonas/zsh-aliases-lsd"
zsh_add_plugin "romkatv/powerlevel10k"

# KeyBind
bindkey -s '^o' 'lfcd\n'
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char
bindkey -- '^[[1;5D' backward-word
bindkey -- '^[[1;5C' forward-word




[[ ! -f $HOME/.config/zsh/.p10k.zsh ]] || source $HOME/.config/zsh/.p10k.zsh

# Add files
zsh_add_file "zsh-aliases"
zsh_add_file "zsh-exports"

# Source
source "$HOME/.config/zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme"

# export LF_ICONS="di=📁:\
#  fi=📃:\
#  tw=🤝:\
#  ow=📂:\
#  ln=⛓:\
#  or=❌:\
#  ex=🎯:\
#  *.txt=✍:\
#  *.mom=✍:\
#  *.me=✍:\
#  *.ms=✍:\
#  *.png=🖼:\
#  *.webp=🖼:\
#  *.ico=🖼:\
#  *.jpg=📸:\
#  *.jpe=📸:\
#  *.jpeg=📸:\
#  *.gif=🖼:\
#  *.svg=🗺:\
#  *.tif=🖼:\
#  *.tiff=🖼:\
#  *.xcf=🖌:\
#  *.html=🌎:\
#  *.xml=📰:\
#  *.gpg=🔒:\
#  *.css=🎨:\
#  *.pdf=📚:\
#  *.djvu=📚:\
#  *.epub=📚:\
#  *.csv=📓:\
#  *.xlsx=📓:\
#  *.tex=📜:\
#  *.md=📘:\
#  *.r=📊:\
#  *.R=📊:\
#  *.rmd=📊:\
#  *.Rmd=📊:\
#  *.m=📊:\
#  *.mp3=🎵:\
#  *.opus=🎵:\
#  *.ogg=🎵:\
#  *.m4a=🎵:\
# *.flac=🎼:\
#  *.wav=🎼:\
#  *.mkv=🎥:\
# *.mp4=🎥:\
#  *.webm=🎥:\
#  *.mpeg=🎥:\
# *.avi=🎥:\
#  *.mov=🎥:\
#  *.mpg=🎥:\
#  *.wmv=🎥:\
#  *.m4b=🎥:\
#  *.flv=🎥:\
#  *.zip=📦:\
#  *.rar=📦:\
# *.7z=📦:\
#  *.tar.gz=📦:\
#  *.z64=🎮:\
# *.v64=🎮:\
#  *.n64=🎮:\
#  *.gba=🎮:\
#  *.nes=🎮:\
#  *.gdi=🎮:\
#  *.1=ℹ:\
#  *.nfo=ℹ:\
#  *.info=ℹ:\
#  *.log=📙:\
#  *.iso=📀:\
#  *.img=📀:\
#  *.bib=🎓:\
#  *.ged=👪:\
#  *.part=💔:\
#  *.torrent=🔽:\
#  *.jar=♨:\
#  *.java=♨:\
#  "
