
Debian
====================
This directory contains files used to package eclipsimd/eclipsim-qt
for Debian-based Linux systems. If you compile eclipsimd/eclipsim-qt yourself, there are some useful files here.

## eclipsim: URI support ##


eclipsim-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install eclipsim-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your eclipsim-qt binary to `/usr/bin`
and the `../../share/pixmaps/eclipsim128.png` to `/usr/share/pixmaps`

eclipsim-qt.protocol (KDE)

