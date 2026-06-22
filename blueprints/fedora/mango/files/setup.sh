sudo dnf install --nogpgcheck --repofrompath 'terra,https://repos.fyralabs.com/terra$releasever' terra-release -y

sudo dnf in mangowm foot thunar waybar mako wlsunset swaybg wl-clipboard cliphist gtklock playerctl rofi wlogout blueman-manager pavucontrol nm-connection-editor xdg-desktop-portal xdg-desktop-portal-wlr xfce-polkit tar -y

sudo dnf in nwg-look xdg-user-dirs fish -y
xdg-user-dirs-update

#gedit engrampa firefox xorg-x11-server-Xwayland

cp -r /tmp/config/blueprints/fedora/mango/config/* ~/.config/
curl -Lso ~/.config/mango/wallpaper.png https://w.wallhaven.cc/full/xe/wallhaven-xe7ylv.png

sudo chsh -s /usr/bin/fish
curl -sS https://starship.rs/install.sh | sh -s -- -y

printf '[Service]\nExecStart=\nExecStart=-/usr/sbin/agetty --autologin %s --noclear %%I $TERM\n' "$USER" | sudo systemctl edit getty@tty1 --stdin

mango