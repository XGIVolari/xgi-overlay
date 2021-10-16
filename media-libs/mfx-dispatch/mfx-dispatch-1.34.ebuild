# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools multilib-minimal

MY_P="mfx_dispatch"
DESCRIPTION="Intel Quick Sync Video sdk"
HOMEPAGE="https://github.com/lu-zero/${MY_P}"
SRC_URI="https://github.com/lu-zero/${MY_P}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD-3-Intel"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="static-libs"

RDEPEND="x11-libs/libva-intel-driver"
DEPEND="${RDEPEND}
	virtual/pkgconfig"

DOCS=( README.md readme-dispatcher.rtf )

S="${WORKDIR}/${MY_P}-${PV}"

src_prepare() {
	default
	eautoreconf
}

multilib_src_configure() {
	local myconf=(

	--enable-shared
	--with-libva_drm
	--with-libva_x11
	$(use_enable static-libs static)
	)
	ECONF_SOURCE="${S}" econf "${myconf[@]}"
}

multilib_src_install_all() {
	einstalldocs

	# package provides .pc file
	find "${D}" -name '*.la' -delete || die
}
