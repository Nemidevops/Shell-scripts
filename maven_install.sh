#!/bin/bash

installMaven() {
    clear
    echo "Apache Maven is a software project management and comprehension tool."
    echo "It is based on the concept of a project object model (POM)."
    echo ""
    echo "Please select your operating system/distribution to install Apache Maven:"
    echo ""

    PS3="Select your OS/Distribution: "
    select os_option in \
        "Ubuntu" \
        "Debian" \
        "CentOS" \
        "Fedora" \
        "Amazon Linux" \
        "Arch Linux" \
        "OpenSUSE" \
        "Quit"
    do
        case $REPLY in
            1) installMavenUbuntu ;;
            2) installMavenDebian ;;
            3) installMavenCentOS ;;
            4) installMavenFedora ;;
            5) installMavenAmazonLinux ;;
            6) installMavenArchLinux ;;
            7) installMavenOpenSUSE ;;
            8) exit ;;
            *) echo "Invalid selection, please try again..." ;;
        esac
    done
}

installMavenUbuntu() {
    clear
    echo "Installing Apache Maven on Ubuntu..."
    sudo apt update
    sudo apt install -y maven
    echo "Apache Maven installed successfully!"
    exit 0
}

installMavenDebian() {
    clear
    echo "Installing Apache Maven on Debian..."
    sudo apt update
    sudo apt install -y maven
    echo "Apache Maven installed successfully!"
    exit 0
}

installMavenCentOS() {
    clear
    echo "Installing Apache Maven on CentOS..."
    sudo yum install -y maven
    echo "Apache Maven installed successfully!"
    exit 0
}

installMavenFedora() {
    clear
    echo "Installing Apache Maven on Fedora..."
    sudo dnf install -y maven
    echo "Apache Maven installed successfully!"
    exit 0
}

installMavenAmazonLinux() {
    clear
    echo "Installing Apache Maven on Amazon Linux..."
    sudo yum install -y maven
    echo "Apache Maven installed successfully!"
    exit 0
}

installMavenArchLinux() {
    clear
    echo "Installing Apache Maven on Arch Linux..."
    sudo pacman -Sy --noconfirm maven
    echo "Apache Maven installed successfully!"
    exit 0
}

installMavenOpenSUSE() {
    clear
    echo "Installing Apache Maven on OpenSUSE..."
    sudo zypper install -y maven
    echo "Apache Maven installed successfully!"
    exit 0
}

installMaven
