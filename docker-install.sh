#!/bin/bash

installDocker() {
    clear
    echo "Docker is an open platform for developing, shipping, and running applications."
    echo "It enables you to separate your applications from your infrastructure so you can deliver software quickly."
    echo ""
    echo "Please select your operating system/distribution to install Docker:"
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
            1) installDockerUbuntu ;;
            2) installDockerDebian ;;
            3) installDockerCentOS ;;
            4) installDockerFedora ;;
            5) installDockerAmazonLinux ;;
            6) installDockerArchLinux ;;
            7) installDockerOpenSUSE ;;
            8) exit ;;
            *) echo "Invalid selection, please try again..." ;;
        esac
    done
}

installDockerUbuntu() {
    clear
    echo "Installing Docker on Ubuntu..."
    sudo apt update
    sudo apt install -y docker.io
    echo "Docker installed successfully!"
    exit 0
}

installDockerDebian() {
    clear
    echo "Installing Docker on Debian..."
    sudo apt update
    sudo apt install -y docker.io
    echo "Docker installed successfully!"
    exit 0
}

installDockerCentOS() {
    clear
    echo "Installing Docker on CentOS..."
    sudo yum install -y docker
    echo "Docker installed successfully!"
    exit 0
}

installDockerFedora() {
    clear
    echo "Installing Docker on Fedora..."
    sudo dnf install -y docker
    echo "Docker installed successfully!"
    exit 0
}

installDockerAmazonLinux() {
    clear
    echo "Installing Docker on Amazon Linux..."
    sudo yum install -y docker
    echo "Docker installed successfully!"
    exit 0
}

installDockerArchLinux() {
    clear
    echo "Installing Docker on Arch Linux..."
    sudo pacman -Sy --noconfirm docker
    echo "Docker installed successfully!"
    exit 0
}

installDockerOpenSUSE() {
    clear
    echo "Installing Docker on OpenSUSE..."
    sudo zypper install -y docker
    echo "Docker installed successfully!"
    exit 0
}

installDocker
