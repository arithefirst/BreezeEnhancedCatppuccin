#!/bin/bash

# Prompt the user
read -p "Would you like to install Breeze Enhanced Catppuccin? (Y/n): " answer

# Check the user's input
if [[ $answer =~ ^([Yy]|[[:space:]])$ ]] || [[ -z $answer ]]; then
    # Proceed with the installation
    echo "Proceeding with the installation..."
else
    # Exit the script if the user doesn't agree or provides invalid input
    echo "Installation cancelled."
    exit 1
fi

# Function to prompt the user for installation type
select_install_type() {
    local valid_options="1 2 3"
    local selected_option=""
    
    while true; do
        echo "Please select your system type:"
        echo "1) Debian Based"
        echo "2) Arch Based"
        echo "3) Other"
        read -p "Please Enter your choice: " choice
        
        if [[ "$valid_options" =~ (^|[[:space:]])"$choice"($|[[:space:]]) ]]; then
            selected_option=$choice
            break
        else
            echo "Invalid selection. Please try again."
        fi
    done
    
    return $selected_option
}

# Main script execution
select_install_type
selected_option=$?

case $selected_option in
    1)
        echo "Selected Debian Based system."
        echo "Installing Packages...."
        sudo apt install extra-cmake-modules git -y
        ;;
    2)
        echo "Selected Arch Based system."
        echo "Installing Packages...."
        sudo pacman -S extra-cmake-modules git --noconfirm
        ;;
    *)
        echo "Selected Other system."
        echo "Please install the packages 'extra-cmake-modules' and 'git', then return here and enter Y."
        read -p "Have you installed the required packages? (y/N): " answer
        if [[ $answer =~ ^([Nn]|[[:space:]])$ ]] || [[ -z $answer ]]; then
            # Proceed with the installation
            echo "Proceeding with the installation..."
        else
            # Exit the script if the user doesn't agree or provides invalid input
            echo "Installation cancelled."
            exit 1
        fi
        ;;
esac

# Pull Git Repo
cd ~/
git clone https://github.com/arithefirst/BreezeEnhancedCatppuccin
cd BreezeEnhancedCatppuccin

# Use the select statement to display the menu and get user input
echo ""
options=("Latte" "Frappé" "Macchiato" "Mocha")
echo "Please select a flavor:"
select opt in "${options[@]}"
do
    case $opt in
        Latte)
            echo "You selected Latte."
            cd Latte
            echo "Installing...."
            echo ""
            mkdir build && cd build
            cmake .. -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Release -DKDE_INSTALL_LIBDIR=lib -DBUILD_TESTING=OFF -DKDE_INSTALL_USE_QT_SYS_PATHS=ON
            make
            sudo make install
            break ;;
        Frappé)
            echo "You selected Frappé."
            cd Frappé
            echo "Installing...."
            echo ""
            mkdir build && cd build
            cmake .. -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Release -DKDE_INSTALL_LIBDIR=lib -DBUILD_TESTING=OFF -DKDE_INSTALL_USE_QT_SYS_PATHS=ON
            make
            sudo make install
            break ;;
        Macchiato)
            echo "You selected Macchiato."
            cd Macchiato
            echo "Installing...."
            echo ""
            mkdir build && cd build
            cmake .. -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Release -DKDE_INSTALL_LIBDIR=lib -DBUILD_TESTING=OFF -DKDE_INSTALL_USE_QT_SYS_PATHS=ON
            make
            sudo make install
            break ;;
        Mocha)
            echo "You selected Mocha."
            cd Mocha
            echo "Installing...."
            echo ""
            mkdir build && cd build
            cmake .. -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Release -DKDE_INSTALL_LIBDIR=lib -DBUILD_TESTING=OFF -DKDE_INSTALL_USE_QT_SYS_PATHS=ON
            make
            sudo make install
            echo ""
            echo "Breeze Enhanced Catppuccin should now be installed. If there are any visible errors, please create an issue report on github. Otherwise, Log out of KDE Plasma, and then log back in to restart KWIN."
            echo "Then the new window decorations should be available to you in System Settings > More Appearance Settings > Window Decorations."
            break ;;
        *) echo "Invalid selection." ;;
    esac
done