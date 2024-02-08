#!/bin/bash


# Function to install Docker
installDocker() {

    # Print system information
    echo "##############################################################################################################################"
    echo "From some basic information on your system, you appear to be running: "
    echo "    --  OS Name:        $(lsb_release -i)"
    echo "    --  Description:    $(lsb_release -d)"
    echo "    --  OS Version:     $(lsb_release -r)"
    echo "    --  Code Name:      $(lsb_release -c)"
    echo ""
    echo "##############################################################################################################################"
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

# Function to install Docker on Ubuntu
installDockerUbuntu() {
    clear
    echo "Installing Docker on Ubuntu..."
    sudo apt update
    sudo apt install -y docker.io
    echo "Docker installed successfully!"
    exit 0
}

# Function to install Docker on Debian
installDockerDebian() {
    clear
    echo "Installing Docker on Debian..."
    sudo apt update
    sudo apt install -y docker.io
    echo "Docker installed successfully!"
    exit 0
}

# Function to install Docker on CentOS
installDockerCentOS() {
    clear
    echo "Installing Docker on CentOS..."
    sudo yum install -y docker
    echo "Docker installed successfully!"
    exit 0
}

# Function to install Docker on Fedora
installDockerFedora() {
    clear
    echo "Installing Docker on Fedora..."
    sudo dnf install -y docker
    echo "Docker installed successfully!"
    exit 0
}

# Function to install Docker on Amazon Linux
installDockerAmazonLinux() {
    clear
    echo "Installing Docker on Amazon Linux..."
    sudo yum install -y docker
    echo "Docker installed successfully!"
    exit 0
}

# Function to install Docker on Arch Linux
installDockerArchLinux() {
    clear
    echo "Installing Docker on Arch Linux..."
    sudo pacman -Sy --noconfirm docker
    echo "Docker installed successfully!"
    exit 0
}

# Function to install Docker on OpenSUSE
installDockerOpenSUSE() {
    clear
    echo "Installing Docker on OpenSUSE..."
    sudo zypper install -y docker
    echo "Docker installed successfully!"
    exit 0
}

# Call the installDocker function to start the installation process
installDocker
