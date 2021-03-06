# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit eutils cmake-utils

if [[ "${PV}" == "9999" ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/digitalsurvival/${PN}.git
		git://github.com/digitalsurvival/${PN}.git"
		KEYWORDS=""
else
	SRC_URI="https://github.com/digitalsurvival/${PN}/archive/${PV}.tar.gz"
	KEYWORDS="~x86 ~amd64"
fi

DESCRIPTION="Two step authentication for SSH using one time passwords"
HOMEPAGE="https://github.com/digitalsurvival/ppp-pam"
LICENSE="GPL-2"
SLOT="0"

DEPEND=""

RDEPEND="virtual/pam
	${DEPEND}
	"

src_configure() {
	if [[ -x ${ECONF_SOURCE:-.}/configure ]] ; then
		econf
	fi
}

src_compile() {
	if [ -f Makefile.am ]; then
		emake || die "emake failed"
	fi
}

src_install() {
	emake DESTDIR="${D}" install
	#dodoc README CHANGES
}

pkg_postinst() {
	elog "Note: Although the ppp module is now installed it requires manual"
	elog "configuration steps for implementation. Please configure PAM to"
	elog "use this module before proceeding. For more information see:"
	elog "https://github.com/DigitalSurvival/ppp-pam/blob/master/README.md"
}
