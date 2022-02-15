# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v3

EAPI=8

inherit meson

DESCRIPTION="Makes power profiles handling available over D-Bus"
HOMEPAGE="https://gitlab.freedesktop.org/hadess/power-profiles-daemon"

if [[ ${PV} == 9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://gitlab.freedesktop.org/hadess/${PN}.git"
else
	SRC_URI="https://gitlab.freedesktop.org/hadess/${PN}/-/archive/${PV}/${PN}-${PV}.tar.gz"
	KEYWORDS="~amd64 ~arm64"
fi

LICENSE="GPL-3"
SLOT="0"

DEPEND="dev-libs/libgudev
		sys-apps/systemd
		sys-auth/polkit[introspection]
		dev-libs/glib[dbus]"
RDEPEND="${DEPEND}"
