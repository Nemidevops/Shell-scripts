#!/bin/bash

installAnsible() {
    clear
    echo "Ansible is an open-source automation tool that simplifies configuration management, application deployment, and task automation."
    echo "It uses SSH to connect to remote servers and configure them according to the playbook instructions."
    echo ""
    echo "Please select your operating system/distribution to install Ansible:"
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
            1) installAnsibleUbuntu ;;
            2) installAnsibleDebian ;;
            3) installAnsibleCentOS ;;
            4) installAnsibleFedora ;;
            5) installAnsibleAmazonLinux ;;
            6) installAnsibleArchLinux ;;
            7) installAnsibleOpenSUSE ;;
            8) exit ;;
            *) echo "Invalid selection, please try again..." ;;
        esac
    done
}

installAnsibleUbuntu() {
    clear
    echo "Installing Ansible on Ubuntu..."
    sudo apt update
    sudo apt install -y software-properties-common
    sudo apt-add-repository --yes --update ppa:ansible/ansible
    sudo apt install -y ansible
    echo "Ansible installed successfully!"
    ansible --version
    exit 0
}

installAnsibleDebian() {
    clear
    echo "Installing Ansible on Debian..."
    sudo apt update
    sudo apt install -y software-properties-common
    sudo apt-add-repository --yes --update ppa:ansible/ansible
    sudo apt install -y ansible
    echo "Ansible installed successfully!"
    ansible --version
    exit 0
}

installAnsibleCentOS() {
    clear
    echo "Installing Ansible on CentOS..."
    sudo yum install -y epel-release
    sudo yum install -y ansible
    echo "Ansible installed successfully!"
    ansible --version
    exit 0
}

installAnsibleFedora() {
    clear
    echo "Installing Ansible on Fedora..."
    sudo dnf install -y ansible
    echo "Ansible installed successfully!"
    ansible --version
    exit 0
}

installAnsibleAmazonLinux() {
    clear
    echo "Installing Ansible on Amazon Linux..."
    sudo amazon-linux-extras install -y ansible2
    echo "Ansible installed successfully!"
    ansible --version
    exit 0
}

installAnsibleArchLinux() {
    clear
    echo "Installing Ansible on Arch Linux..."
    sudo pacman -Sy --noconfirm ansible
    echo "Ansible installed successfully!"
    ansible --version
    exit 0
}

installAnsibleOpenSUSE() {
    clear
    echo "Installing Ansible on OpenSUSE..."
    sudo zypper install -y ansible
    echo "Ansible installed successfully!"
    ansible --version
    exit 0
}

installAnsible
