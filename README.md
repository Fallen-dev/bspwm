
# My BSPWM config

This is my BSPWM config which I use for my daily use as a full desktop enviroment.

![Neofetch on st terminal](https://raw.githubusercontent.com/Fallen-dev/storage/main/screenshots/bspwm/home-w-nfetch.png)
*Neofetch on st terminal.*


## Installation
First, install the following packages.

```bash
bspwm sxhkd dunst polybar rofi rofi-emoji nitrogen picom pulseaudio pamixer brightnessctl gnome-screenshot gnome-keyring polkit-gnome
```

Then clone the repository and execute the install.sh file.

```bash
git clone https://github.com/Fallen-dev/bspwm
cd bspwm && ./install.sh
```

Now logout of your current session and log back in with BSPWM!

> NOTE: If you're using a display manager then **select BSPWM** while logging in. If you don't then just use this command `startx` in the login shell.

The install.sh script will create/add `exec bspwm` to the `.xinitrc` file.

There is also the wallpaper shown in the screenshots named `wall.jpg`
## Screenshots
![This is the home](https://raw.githubusercontent.com/Fallen-dev/storage/main/screenshots/bspwm/home.png)
*This is the home with polybar.*

![This is the home](https://raw.githubusercontent.com/Fallen-dev/storage/main/screenshots/bspwm/code.png)
*This is the monocle layout which is default. Neovim (nvchad) on st terminal.*

![This is the floating layout](https://raw.githubusercontent.com/Fallen-dev/storage/main/screenshots/bspwm/lt-float.png)
*This is the floating layout and Thunar and st terminal opened.*

![Fullscreen application launcher using rofi](https://raw.githubusercontent.com/Fallen-dev/storage/main/screenshots/bspwm/rofi-launchpad.png)
*Fullscreen application launcher using rofi.*

![Quick search launcher using rofi](https://raw.githubusercontent.com/Fallen-dev/storage/main/screenshots/bspwm/rofi.png)
*MacOS finder like app launcher using rofi.*


#### Credits for rofi themes
- https://github.com/newmanls/rofi-themes-collection
- https://github.com/adi1090x/rofi
## Features

- Polybar with click toggles for most of the use cases
- MacOS like window control buttons in Polybar
- Rofi for app laucher and powermenu
- Custom app menu and logout menu using Polybar's menu module
- Music player toggle using `playerctl`
- Rosepine theme
- Low memory usage ~260 MB on idle


## Documentation

[Documentation](https://linktodocumentation)


## Packages required

### Must have

**BSPWM:** Window manager.

**Sxhkd:** Keybinding daemon.

**Polybar:** Status bar.

**Dunst:** Notification daemon.

**Rofi:** App launcher and powermenu.

> **NOTE:** The rofi's powermenu shows using the keybindings `alt + shift + Q`. Clicking on the *exit* icon on Polybar will open the custom menu toggle.

**Nitrogen:** Wallpaper manager.

**Picom:** Compositor

**pnome-keyring:** Storing credentials

**polkit-gnome:** My choice of polkit agent

### Optional but required for keybindings
**Pamixer:** Control volume.

**Brightnessctl:** Control rightness.

**Playerctl:** Show music title and control playback on Polybar.

**Rofi-moji:** Used in *sxhkd* keybinding to popup emoji selector.

**Htop:** Used in Polybar's memory section. Click to open htop on st terminal.

**St:** Suckless terminal, needed for Polybar.

**NetworkManager:** Needed for `nmtui` command which can be accessed by clicking on the _network_ section on Polybar.

You can change these apps with any other apps of your liking but you have to change the config files.


### Other optional apps
**File manager:** Thunar, Pcmanfm, Nemo.

**Terminal:** St, Kitty, Alacritty, Urxvt, Xterm.

**Text editor:** VSCode, Geany, Mousepad, Gedit, Code-OSS.

**Video player:** MPV, VLC.

You must install any one of the following apps for each category.

- These apps are used in Polybar's custom menu app picker widget.

- The app precedance follows the order as listed above.

