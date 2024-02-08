#!/bin/bash

installTrivy() {
    clear
    echo "Trivy is a comprehensive and easy-to-use vulnerability scanner for containers and container images."
    echo "It helps you detect vulnerabilities in your container images and provides detailed reports."
    echo ""
    echo "Please select your operating system/distribution to install Trivy:"
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
            1) installTrivyUbuntu ;;
            2) installTrivyDebian ;;
            3) installTrivyCentOS ;;
            4) installTrivyFedora ;;
            5) installTrivyAmazonLinux ;;
            6) installTrivyArchLinux ;;
            7) installTrivyOpenSUSE ;;
            8) exit ;;
            *) echo "Invalid selection, please try again..." ;;
        esac
    done
}

installTrivyUbuntu() {
    clear
    echo "Installing Trivy on Ubuntu..."
    sudo apt update
    sudo apt install -y wget apt-transport-https gnupg lsb-release
    wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | sudo apt-key add -
    echo deb https://aquasecurity.github.io/trivy-repo/deb $(lsb_release -sc) main | sudo tee -a /etc/apt/sources.list.d/trivy.list
    sudo apt update
    sudo apt install -y trivy
    echo "Trivy installed successfully!"
    trivy --version
    exit 0
}

installTrivyDebian() {
    clear
    echo "Installing Trivy on Debian..."
    sudo apt update
    sudo apt install -y wget apt-transport-https gnupg lsb-release
    wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | sudo apt-key add -
    echo deb https://aquasecurity.github.io/trivy-repo/deb $(lsb_release -sc) main | sudo tee -a /etc/apt/sources.list.d/trivy.list
    sudo apt update
    sudo apt install -y trivy
    echo "Trivy installed successfully!"
    trivy --version
    exit 0
}

installTrivyCentOS() {
    clear
    echo "Installing Trivy on CentOS..."
    sudo yum install -y wget
    sudo rpm -Uvh https://github.com/aquasecurity/trivy/releases/download/v0.20.0/trivy_0.20.0_Linux-64bit.rpm
    echo "Trivy installed successfully!"
    trivy --version
    exit 0
}

installTrivyFedora() {
    clear
    echo "Installing Trivy on Fedora..."
    sudo dnf install -y wget
    sudo rpm -Uvh https://github.com/aquasecurity/trivy/releases/download/v0.20.0/trivy_0.20.0_Linux-64bit.rpm
    echo "Trivy installed successfully!"
    trivy --version
    exit 0
}

installTrivyAmazonLinux() {
    clear
    echo "Installing Trivy on Amazon Linux..."
    sudo yum install -y wget
    sudo rpm -Uvh https://github.com/aquasecurity/trivy/releases/download/v0.20.0/trivy_0.20.0_Linux-64bit.rpm
    echo "Trivy installed successfully!"
    trivy --version
    exit 0
}

installTrivyArchLinux() {
    clear
    echo "Installing Trivy on Arch Linux..."
    sudo pacman -Sy --noconfirm trivy
    echo "Trivy installed successfully!"
    trivy --version
    exit 0
}

installTrivyOpenSUSE() {
    clear
    echo "Installing Trivy on OpenSUSE..."
    sudo zypper install -y trivy
    echo "Trivy installed successfully!"
    trivy --version
    exit 0
}

installTrivy
