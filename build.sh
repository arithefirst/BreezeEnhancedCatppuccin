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

# Example usage:
confirm_continue
sudo pacman -S git extra-cmake-modules
cd ~/
git clone https://github.com/arithefirst/BreezeEnhancedCatppuccin.git
cd BreezeEnhancedCatppuccin
mkdir build && cd build
cmake .. -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Release -DKDE_INSTALL_LIBDIR=lib -DBUILD_TESTING=OFF -DKDE_INSTALL_USE_QT_SYS_PATHS=ON
make
sudo make install