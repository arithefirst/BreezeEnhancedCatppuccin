<h3 align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/logos/exports/1544x1544_circle.png" width="100" alt="Logo"/><br/>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
	Catppuccin for <a href="https://github.com/tsujan/BreezeEnhanced">Breeze Enhanced</a>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
</h3>

<p align="center">
	<a href="https://github.com/arithefirst/BreezeEnhancedCatppuccin/stargazers"><img src="https://img.shields.io/github/stars/arithefirst/BreezeEnhancedCatppuccin?colorA=363a4f&colorB=b7bdf8&style=for-the-badge"></a>
	<a href="https://github.com/arithefirst/BreezeEnhancedCatppuccin/issues"><img src="https://img.shields.io/github/issues/arithefirst/BreezeEnhancedCatppuccin?colorA=363a4f&colorB=f5a97f&style=for-the-badge"></a>
	<a href="https://github.com/arithefirst/BreezeEnhancedCatppuccin/contributors"><img src="https://img.shields.io/github/contributors/arithefirst/BreezeEnhancedCatppuccin?colorA=363a4f&colorB=a6da95&style=for-the-badge"></a>
</p>

<p align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/previews/preview.webp"/>
</p>

## Previews

<details>
<summary>🌻 Latte</summary>
<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/previews/latte.webp"/>
</details>
<details>
<summary>🪴 Frappé</summary>
<img src="screenshots/Frappe.png"/>
</details>
<details>
<summary>🌺 Macchiato</summary>
<img src="screenshots/Macchiato.png"/>
</details>
<details>
<summary>🌿 Mocha</summary>
<img src="screenshots/Mocha.png"/>
</details>

## Usage

1. Open a new terminal Window
2. `bash <(curl -s https://raw.githubusercontent.com/arithefirst/BreezeEnhancedCatppuccin/main/build.sh)`

If you Prefer a manual Installation:
1. Clone this repo
2. Enter the cloned directory, then enter the directory of the flavor you want to install
3. Run the following in your terminal
```sh
mkdir build && cd build
cmake .. -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Release -DKDE_INSTALL_LIBDIR=lib -DBUILD_TESTING=OFF -DKDE_INSTALL_USE_QT_SYS_PATHS=ON
make
sudo make install
```

## 💝 Thanks to

- [Tsujan](https://github.com/catppuccin) (Developer of Breeze Enhanced)

&nbsp;

<p align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/footers/gray0_ctp_on_line.svg?sanitize=true" />
</p>

<p align="center">
	Copyright &copy; 2021-present <a href="https://github.com/catppuccin" target="_blank">Catppuccin Org</a>
</p>

<p align="center">
	<a href="https://github.com/catppuccin/catppuccin/blob/main/LICENSE"><img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&logoColor=d9e0ee&colorA=363a4f&colorB=b7bdf8"/></a>
</p>
