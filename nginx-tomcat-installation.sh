#!/bin/bash

installNginx() {
    echo "Installing Nginx..."
    case $OS_CHOICE in
        1|2)
            sudo apt update
            sudo apt install nginx -y
            ;;
        3|4)
            sudo yum install epel-release -y
            sudo yum install nginx -y
            ;;
        5)
            sudo amazon-linux-extras install nginx1 -y
            ;;
        6)
            sudo pacman -Sy nginx --noconfirm
            ;;
        7)
            sudo zypper install nginx -y
            ;;
        *)
            echo "Unsupported OS."
            exit 1
            ;;
    esac
}

installTomcat() {
    echo "Installing Apache Tomcat..."
    case $OS_CHOICE in
        1|2)
            sudo apt update
            sudo apt install default-jdk -y
            sudo apt install tomcat9 -y
            ;;
        3|4)
            sudo yum install java -y
            sudo yum install tomcat -y
            ;;
        5)
            sudo amazon-linux-extras install java-openjdk11 -y
            sudo yum install tomcat -y
            ;;
        6)
            sudo pacman -Sy jdk-openjdk tomcat --noconfirm
            ;;
        7)
            sudo zypper install java-11-openjdk tomcat -y
            ;;
        *)
            echo "Unsupported OS."
            exit 1
            ;;
    esac
}

echo "Welcome to the installation script for Nginx and Apache Tomcat."
echo "Please select the service(s) you want to install:"
echo "1. Nginx"
echo "2. Apache Tomcat"
echo "3. Both"

read -p "Enter your choice (1/2/3): " SERVICE_CHOICE

case $SERVICE_CHOICE in
    1)
        installNginx
        ;;
    2)
        installTomcat
        ;;
    3)
        installNginx
        installTomcat
        ;;
    *)
        echo "Invalid choice. Exiting..."
        exit 1
        ;;
esac

echo "Please select your operating system/distribution:"
echo "1. Ubuntu"
echo "2. Debian"
echo "3. CentOS"
echo "4. Fedora"
echo "5. Amazon Linux"
echo "6. Arch Linux"
echo "7. OpenSUSE"

read -p "Enter your choice (1-7): " OS_CHOICE

case $OS_CHOICE in
    1)
        echo "Installing on Ubuntu..."
        ;;
    2)
        echo "Installing on Debian..."
        ;;
    3)
        echo "Installing on CentOS..."
        ;;
    4)
        echo "Installing on Fedora..."
        ;;
    5)
        echo "Installing on Amazon Linux..."
        ;;
    6)
        echo "Installing on Arch Linux..."
        ;;
    7)
        echo "Installing on OpenSUSE..."
        ;;
    *)
        echo "Invalid choice. Exiting..."
        exit 1
        ;;
esac

echo "Installation completed successfully."
