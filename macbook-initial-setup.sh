#!/bin/bash

# Change login shell to zsh. This is default shell for MacOS Catalina and above, this is only for legacy systems
# chsh -s /bin/zsh

# install homebrew apps repositories manager
#/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# add repo with drivers to cask (needed for Steelseries Engine and Logitech Camera Settings)
brew tap homebrew/cask-drivers

# List of non-AppStore apps
nonAppStoreApps=(
#Browsers
    opera # One of the top browsers with build in VPN
    firefox # Most popular open source browser
    google-chrome # Most popular browser
    tor-browser # Browser preconfigured with TOR network
#Developer
    pgadmin4 #Administration and development platform for PostgreSQL
    postman # Most popular HTTP requests tool
    visual-studio-code # Electron-based code editor with community-driven plugins developed by Microsoft
    tableplus # Modern SQL client
    bbedit # Most stable macOS text editor that can handle huge files
    charles # Web debugging proxy
    mactex # Full LateX installation with supporting apps, about 4GB!
    iterm2 # Alternative terminal
    sketch # UI/UX design tool
    zeplin # UI/UX design viewer
    avocode # UI/UX design tool
    typora # Markdown single pane editor
    sourcetree # GUI for git and gitflow
    isimulator # App to manage iOS Simulators
    cyberduck # FTP client
#SECURITY
    protonvpn # VPN from ProtonMail
    protonmail-bridge # Bridge for email clients to work with ProtonMail
    authy # 2-factor authenticator
#HDD
    drivedx # SMART status and HDD health tool
    AmorphousDiskMark # HDD benchmarking tool
    balenaetcher # creating USB drives
    sdformatter # SD card formatter recommended by SD Association
    ApplePi-Baker # App for making the binary image copies of the whole drives
#Video
    iina # Best looking macOS video watching app
    vlc # Most popular cross-platform video watching app
    handbrake # Video Transcoder
#Graphics
    gimp # Graphics editor
    paintbrush # Simple Microsoft Paint-like drawing tool #WARNING: It changes images DPI!
    blender # 3D creation suite
    inkscape # Vector graphics editor
#OTHER
    nextcloud #Desktop sync client for Nextcloud software products
    monitorcontrol # Monitor control works with media keys to set brightness of the display and HDMI output sounds volume
    transmission # Torrents client
    keka # Rar extractor
    libreoffice # Documents/spreadsheets/presentations editor
    bettertouchtool # Custom gestures for touchpad and touchbar, and reverse scrolling setting separate for touchpad and mouse.
    calibre # Mobi/epub e-book converter
    virtualbox # Virtual Machine
    virtualbox-extension-pack # Extensions for virtualbox such as display resolution and USB
    logitech-camera-settings  #drivers for the webcamera
    signal # End-to-end encrypted messenger
    microsoft-teams #Messenger
    heaven # Popular GPU Benchmark
    rar # Archive manager for data compression and backups
#Audio    
    xld # Audio converter
    musicbrainz-picard # Audio tags editor
    spotify # Most popular music streaming service
#Games: WARNING Most games are 32-bit and won't work on Catalina or above
    steam # Biggest gaming platform from Valve
    gog-galaxy # Gaming platform with huge retro library from CD-Projekt
    origin # EA's gaming platform
    epic-games # Epic's gaming platform
#Developer
    # pycharm-ce # Python IDE from JetBrains (community edition)
    # webstorm # JavaScript IDE from JetBrains
    # intellij-idea-ce # Java IDE from JetBrains (community edition)
    sublime-text # Cross-platform code editor with it's own high performance rendering engine
    # atom # Electron-based code editor with community-driven plugins developed by Github
    # macdown # Markdown 2 panes editor
    # dotnet-sdk # Dotnet language support
    # docker # App to make containers for environments 
    # insomnia # Electron-based open source HTTP requests tool
    # paw # MacOS native HTTP requests tool
	# reveal # App to edit iOS Views on the fly
#Other
    # coconutbattery # Tool to show live information about the batteries in various devices
    # linein # App for redirecting macOS audio between sources (Audio  Play-Thru). This may not work with Big Sur. Look at https://www.rogueamoeba.com for alternatives.
    # soundflower # App giving additional audio sources for audio manipulation
    # anki # App for learning with flashcards
    # zoomus # Video conference App
    # xquartz # X11 windows server needed for wine
    # wine-stable # App to open Windows .exe files
   	# scroll-reverser # Reverse scrolling setting separate for touchpad and mouse. Use instead of bettertouchtool
    # paragon-ntfs # Support for NTFS file system
    # thunderbird # Open Source Email client
)

# install non-AppStore apps
brew install --cask ${nonAppStoreApps[@]}

# Update installed apps and clear caches
brew update
brew upgrade
brew cask upgrade
brew cleanup
rm -rf ~/Library/Caches/Homebrew
