# BreezeEnhancedCatppuccin

> [!IMPORTANT]
> This is a fork of [BreezeEnhanced](https://github.com/tsujan/BreezeEnhanced) that changes the colors of the **Close**, **Maximize** and **Minimize** buttons to match the [Catppuccin](https://github.com/catppuccin/catppuccin) color scheme. It works very well with the [Catppuccin KDE Theme](https://github.com/catppuccin/kde) and it **fixes the famous rounded corners bug (blur not respecting the rounded corners and 'leaking')**.

## Overview

BreezeEnhanced is a fork of KDE Breeze decoration with the following changes:

 * The optional title-bar gradient is smooth and has a configurable intensity.
 * The title-bar opacity is configurable.
 * A very mild light line is added to the top of title-bar (especially for dark color schemes) and the separator between title-bar and window is removed.
 * By default, the close, minimize and maximize buttons are macOS-like and their sizes change on mouse-over when animation is enabled.
 * The spacing between buttons is configurable.
 * Opaqueness, opacity override and flatness are added to the exception list properties.
 * Title-bar font is set indpendent from the KDE font settings (for use outside KDE).

Please note that BreezeEnhanced is not related to the Breeze widget style. In fact, it is made to match various themes of the [Kvantum](https://github.com/tsujan/Kvantum) widget style but it works with all styles.

## Credits:

BreezeEnhancedCatppuccin was created from [BreezeEnhanced](https://github.com/tsujan/BreezeEnhanced) by arithefirst.

BreezeEnhanced was started by tsujan, and was created from [BreezeBlurred](https://github.com/alex47/BreezeBlurred), a former fork of Breeze with title-bar translucency and blurring.

## Installation

In what follows, it is supposed that the name of the installation directory of KDE libraries is `lib` and the installation prefix is `/usr`. If they are different in your distro, please replace them!

Open your terinal and run:
```sh
bash <(curl -s https://raw.githubusercontent.com/arithefirst/BreezeEnhancedCatppuccin/main/build.sh)
```
If you prefer a manual installation, clone this repository, open a terminal inside the source directory and run the following.

```sh
mkdir build && cd build
cmake .. -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Release -DKDE_INSTALL_LIBDIR=lib -DBUILD_TESTING=OFF -DKDE_INSTALL_USE_QT_SYS_PATHS=ON
make
sudo make install
```
After the intallation, restart KWin by logging out and in. Then, BreezeEnhanced will appear in *System Settings &rarr; Application Style &rarr; Window Decorations*.

## Screenshots:

![Settings](screenshots/Settings.png?raw=true "Settings")

![Exception](screenshots/Exception.png?raw=true "Exception")

![Buttons](screenshots/Buttons.png?raw=true "Buttons")

Mocha Buttons Example:
![Animation](screenshots/Animation.gif?raw=true "Animation")
