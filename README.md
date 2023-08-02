
# My BSPWM config

This is my BSPWM config which I use for my daily use as a full desktop enviroment.

![BSPWM home](https://raw.githubusercontent.com/Fallen-dev/bspwm/main/media/home.png)


## Installation
First, install the following packages.

```bash
bspwm sxhkd dunst polybar nitrogen picom pulseaudio pamixer brightnessctl gnome-screenshot
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

My configuration is not yet completed. But it can be used as full desktop enviroment replacement.

> If you want additional settings, install `xfce4-settings-manager`

#### Monocle
This is the default layout when there is only one window at a workspace.

![BSPWM home](https://raw.githubusercontent.com/Fallen-dev/bspwm/main/media/lt-monocle.png)

#### Floating
Some applications like *Thunar*, *MPV* are set to floating layout.

![BSPWM home](https://raw.githubusercontent.com/Fallen-dev/bspwm/main/media/lt-float.png)

#### Tiled
As soon as there is Two windows at a workspace, the layout will switch to tiled layout.

![BSPWM home](https://raw.githubusercontent.com/Fallen-dev/bspwm/main/media/lt-tile.png)
## Features

- Polybar with all the necessary toggles
- MacOS like window action buttos
- Rofi for app laucher
- Custom logout toggles on the polybar
- Music player toggle using `playerctl`
- Minimalist design
- Rosepine theme


