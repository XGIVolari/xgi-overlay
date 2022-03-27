# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit gnome.org gnome2-utils meson xdg

DESCRIPTION="portal backend implementation that is using GTK+ and various pieces of GNOME"
HOMEPAGE="https://gitlab.gnome.org/GNOME/xdg-desktop-portal-gnome"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="amd64 ~arm arm64 ~ppc ~ppc64 ~riscv x86"

DEPEND="
	>=sys-apps/xdg-desktop-portal-1.7
	sys-apps/xdg-desktop-portal-gtk
"

pkg_postinst() {
	xdg_pkg_postinst
	gnome2_schemas_update
}

pkg_postrm() {
	xdg_pkg_postrm
	gnome2_schemas_update
}

