# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v3

EAPI=8

inherit autotools

DESCRIPTION="wxEDID is a wxWidgets - based EDID (Extended Display Identification Data) editor."
HOMEPAGE="https://sourceforge.net/projects/wxedid"
SRC_URI="https://sourceforge.net/projects/wxedid/files/wxedid-${PV}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="
		x11-libs/wxGTK"
RDEPEND="${DEPEND}"
