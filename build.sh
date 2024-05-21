function confirm_continue() {
    read -p "Install BreezeEnhanced Catppuccin Edition? (y/n): " answer
    case "$answer" in
        [Yy]* )
            echo "Installing BreezeEnhancedCatppuccin"
            ;;
        [Nn]* )
            echo "Exiting"
            exit 1
            ;;
        * )
            # Default action if neither y nor n is entered
            echo "Invalid input. Continuing..."
            ;;
    esac
}

# Function to check if the OS is Debian-based
check_debian_based_system() {
    local os_like=$(grep "^ID_LIKE=" /etc/os-release | cut -d '=' -f 2)
    local os_id=$(grep "^ID=" /etc/os-release | cut -d '=' -f 2)
    
    if [[ -z $os_like ]]; then
        os_like=$os_id
    fi
    
    if [[ $os_like == "debian" ]] || [[ $os_like == "ubuntu" ]]; then
        return 0
    else
        return 1
    fi
}

# Function to check if the OS is Arch-based
check_arch_based_system() {
    local os_like=$(grep "^ID_LIKE=" /etc/os-release | cut -d '=' -f 2)
    local os_id=$(grep "^ID=" /etc/os-release | cut -d '=' -f 2)
    
    if [[ -z $os_like ]]; then
        os_like=$os_id
    fi
    
    if [[ $os_like == "arch" ]]; then
        return 0
    else
        return 1
    fi
}

# Main script execution
install_packages="false"
if check_debian_based_system; then
    echo "Running on Debian-based system."
    sudo apt install git extra-cmake-modules -y
elif check_arch_based_system; then
    echo "Running on Arch-based system."
    sudo pacman -Syu --noconfirm git extra-cmake-modules
else
    echo "Running on non-Debian and non-Arch system. Please install git and extra-cmake-modules using your distribution's package manager."
    read -p "Did you install git and extra-cmake-modules? (y/n): " manual_install
    case "$manual_install" in
        [Yy]* )
            install_packages="true"
            ;;
        [Nn]* )
            echo "Installation aborted due to missing dependencies."
            exit 1
            ;;
        * )
            echo "Invalid input. Installation will proceed."
            install_packages="true"
            ;;
    esac
fi

if $install_packages; then
    echo "Installing git and extra-cmake-modules using your distribution's package manager."
    # Replace the following line with the actual command for your distribution
    sudo apt install git extra-cmake-modules -y
fi

cd ~/
git clone https://github.com/arithefirst/BreezeEnhancedCatppuccin.git
cd BreezeEnhancedCatppuccin
mkdir build && cd build
cmake.. -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Release -DKDE_INSTALL_LIBDIR=lib -DBUILD_TESTING=OFF -DKDE_INSTALL_USE_QT_SYS_PATHS=ON
make
sudo make install
