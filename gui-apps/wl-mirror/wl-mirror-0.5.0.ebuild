# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v3

EAPI=8

inherit cmake

DESCRIPTION="a simple Wayland output mirror client "
HOMEPAGE="https://github.com/Ferdi265/wl-mirror"
SRC_URI="https://github.com/Ferdi265/wl-mirror/releases/download/v${PV}/wl-mirror-${PV}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"

DEPEND="dev-libs/wayland
		dev-util/wayland-scanner
		media-libs/libglvnd"
RDEPEND="${DEPEND}"

