if status is-interactive
    # Commands to run in interactive sessions can go here
    ### EXPORT ###
    set fish_greeting # Supresses fish's intro message
    set TERM xterm-256color # Sets the terminal type


    ### AUTOCOMPLETE AND HIGHLIGHT COLORS ###
    set fish_color_normal brcyan
    set fish_color_autosuggestion '#7d7d7d'
    set fish_color_command brcyan
    set fish_color_error '#ff6c6b'
    set fish_color_param brcyan

    ### ALIASES ###
    # navigation
    alias ..='cd ..'
    alias ...='cd ../..'
    alias .3='cd ../../..'
    alias .4='cd ../../../..'
    alias .5='cd ../../../../..'

    #pacman and yay
    alias pacs="sudo pacman -S"
    alias pacr="sudo pacman -R"
    alias pacrnc="sudo pacman -Rncs"
    alias pacsyu='sudo pacman -Syu' # update only standard pkgs
    alias pacsyyu='sudo pacman -Syyu' # Refresh pkglist & update standard pkgs
    alias parsyu='paru -Syu --noconfirm' # update standard pkgs and AUR pkgs (paru)
    alias unlock='sudo rm /var/lib/pacman/db.lck' # remove pacman lock
    alias cleanup='sudo pacman -Rns (pacman -Qtdq)' # remove orphaned packages (DANGEROUS!)

    # changing "ls" to aze
    alias ll='eza -alh --icons --color=always --group-directories-first' # long format
    alias la='eza -a --icons --color=always --group-directories-first' # all files and dirs
    alias ls='eza -lh --icons --color=always --group-directories-first' # normal list
    alias lt='eza -aTh --icons --color=always --group-directories-first' # tree listing
    alias l.='eza -a | egrep "^\."'er

    # get error messages from journalctl
    alias jctl="journalctl -p 3 -xb"

    # gpg encryption
    # verify signature for isos
    alias gpg-check="gpg2 --keyserver-options auto-key-retrieve --verify"
    # receive the key of a developer
    alias gpg-retrieve="gpg2 --keyserver-options auto-key-retrieve --receive-keys"

    # switch between shells
    alias tofish="chsh -s /bin/fish && exec fish"

    # get fastest mirrors
    alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
    alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
    alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
    alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

    #systemctl 
    alias sys="sudo systemctl"

    # Editor
    alias nvi="nvim"
    alias gvi="goneovim"
    ## SETTING THE STARSHIP PROMPT ###
    # ~/.config/fish/config.fish
    starship init fish | source

    # auto start neofetch 
    neofetch
end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# java
set --export JAVA_HOME /usr/lib/jvm/zulu-17
