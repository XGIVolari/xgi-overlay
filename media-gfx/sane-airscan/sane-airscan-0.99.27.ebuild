# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Scanner Access Now Easy - universal driver for eSCL (Apple AirScan) and WSD"
HOMEPAGE="https://github.com/alexpevzner/sane-airscan"
SRC_URI="https://github.com/alexpevzner/sane-airscan/archive/refs/tags/0.99.27.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_prepare() {
    default
}


