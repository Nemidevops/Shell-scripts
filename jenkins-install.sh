#!/bin/bash

installJenkins() {
    clear
    echo "Jenkins is an open-source automation server that helps to automate the repetitive tasks involved in the software development process."
    echo "It supports building, deploying, and automating projects."
    echo ""
    echo "Please select your operating system/distribution to install Jenkins:"
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
            1) installJenkinsUbuntu ;;
            2) installJenkinsDebian ;;
            3) installJenkinsCentOS ;;
            4) installJenkinsFedora ;;
            5) installJenkinsAmazonLinux ;;
            6) installJenkinsArchLinux ;;
            7) installJenkinsOpenSUSE ;;
            8) exit ;;
            *) echo "Invalid selection, please try again..." ;;
        esac
    done
}

installJenkinsUbuntu() {
    clear
    echo "Installing Jenkins on Ubuntu..."
    sudo apt update
    sudo apt install -y openjdk-11-jdk
    wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
    sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
    sudo apt update
    sudo apt install -y jenkins
    echo "Jenkins installed successfully!"
    echo "You can access Jenkins at http://localhost:8080"
    exit 0
}

installJenkinsDebian() {
    clear
    echo "Installing Jenkins on Debian..."
    sudo apt update
    sudo apt install -y openjdk-11-jdk
    wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
    sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
    sudo apt update
    sudo apt install -y jenkins
    echo "Jenkins installed successfully!"
    echo "You can access Jenkins at http://localhost:8080"
    exit 0
}

installJenkinsCentOS() {
    clear
    echo "Installing Jenkins on CentOS..."
    sudo yum install -y java-11-openjdk-devel
    sudo yum install -y epel-release
    sudo yum install -y wget
    sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
    sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
    sudo yum install -y jenkins
    sudo systemctl start jenkins
    sudo systemctl enable jenkins
    echo "Jenkins installed successfully!"
    echo "You can access Jenkins at http://localhost:8080"
    exit 0
}

installJenkinsFedora() {
    clear
    echo "Installing Jenkins on Fedora..."
    sudo dnf install -y java-11-openjdk-devel
    sudo dnf install -y wget
    sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
    sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
    sudo dnf install -y jenkins
    sudo systemctl start jenkins
    sudo systemctl enable jenkins
    echo "Jenkins installed successfully!"
    echo "You can access Jenkins at http://localhost:8080"
    exit 0
}

installJenkinsAmazonLinux() {
    clear
    echo "Installing Jenkins on Amazon Linux..."
    sudo yum install -y java-11-openjdk-devel
    sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
    sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
    sudo yum install -y jenkins
    sudo systemctl start jenkins
    sudo systemctl enable jenkins
    echo "Jenkins installed successfully!"
    echo "You can access Jenkins at http://localhost:8080"
    exit 0
}

installJenkinsArchLinux() {
    clear
    echo "Installing Jenkins on Arch Linux..."
    sudo pacman -Sy --noconfirm jdk11-openjdk
    sudo pacman -Sy --noconfirm jenkins
    sudo systemctl start jenkins
    sudo systemctl enable jenkins
    echo "Jenkins installed successfully!"
    echo "You can access Jenkins at http://localhost:8080"
    exit 0
}

installJenkinsOpenSUSE() {
    clear
    echo "Installing Jenkins on OpenSUSE..."
    sudo zypper install -y java-11-openjdk
    sudo zypper install -y jenkins
    sudo systemctl start jenkins
    sudo systemctl enable jenkins
    echo "Jenkins installed successfully!"
    echo "You can access Jenkins at http://localhost:8080"
    exit 0
}

installJenkins
