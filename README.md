1. Install Arch with Hyprland using archinstall, Make sure to add xdg-user-dirs, git as optional package

2. Instal yay 
```sh
sudo pacman -Syu git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

3. Install required pakages 
```sh
yay -Syu waybar hyprpaper hypridle hyprlock hyprshot rofi-wayland \
 nm-connection-editor bluez bluez-utils blueberry pavucontrol \
 brightnessctl gvfs-mtp ttf-jetbrains-mono-nerd arc-gtk-theme wl-screenrec
```

4. Install Packages of my choice 
```sh
yay -Syu amberol fen zen-browser-bin thunar heroic-games-launcher-bin
```

5. GTK Theme 
```sh
gsettings set org.gnome.desktop.interface gtk-theme Arc-Dark
```
