# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Metapackage for maffblaster's recommended applications"
HOMEPAGE="https://github.com/digitalsurvival/digital-survival"
SRC_URI=""

LICENSE="metapackage"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+sys-fs +app-admin +dev-utils +communication +portage +consulting +backups systemd"

RDEPEND="
	sys-fs? (
		sys-fs/btrfs-progs
		sys-fs/dosfstools
		sys-fs/exfat-utils
		sys-fs/f2fs-tools
		sys-fs/fuse-exfat
		sys-fs/hfsutils
		sys-fs/jfsutils
		sys-fs/ntfs3g
		sys-fs/reiserfsprogs
		net-fs/sshfs
		sys-fs/squashfs-tools[xattr,xz,lz4,lzma,lzo]
		)
	app-admin? (
		app-admin/sudo
		app-admin/superadduser
		app-admin/hddtemp
		app-backup/snapper
		app-benchmarks/i7z
		app-editors/hexedit
		!systemd? ( app-misc/uptimed )
		net-misc/dhcpcd
		sys-apps/ethtool
		sys-block/parted
		sys-block/gparted[btrfs,dmraid,f2fs,fat,hfs,jfs,mdadm,ntfs,reiser4,reiserfs,xfs]
		app-admin/testdisk[ntfs]
		sys-fs/ncdu
		sys-process/atop
		sys-process/htop
		sys-process/iotop
		x11-misc/redshift
		app-arch/dpkg
	)
	dev-utils? (
		app-misc/wimlib[openssl,iso]
		dev-util/meld
		app-misc/icdiff
		app-text/wgetpaste
		app-arch/cpio
		app-arch/unzip
		app-arch/zip
		app-editors/vim
		app-misc/tmux
		dev-util/pycharm-community
		dev-util/catalyst
		dev-vcs/git
		dev-vcs/cvs
		dev-vcs/mercurial
		dev-vcs/subversion
		dev-vcs/bzr
		net-misc/zsync
		media-video/vlc[matroska,vpx,x265,opus,bluray,dvd,ffmpeg,mpeg,mad,wxwindows,aac,dts,a52,ogg,flac,theora,oggvorbis,freetype,bidi,xv,svga,gnutls,stream,vlm,httpd,cdda,vcd,cdio,live,lua]
	)
	communication? (
		www-client/chromium
		www-client/firefox
		www-client/links
		net-irc/weechat
		media-sound/mumble
		mail-client/mutt[imap,smtp,gpg,sasl]
	)
	portage? (
		>=dev-lang/python-3.4.3
		app-portage/elogv
		app-portage/eix
		app-portage/portage-utils
		app-cdr/cdrtools
		app-cdr/isomaster
		app-crypt/efitools
		app-crypt/gkeys
		app-crypt/gnupg
		app-crypt/keybase
		app-office/dia
		app-portage/gentoolkit
		app-portage/layman
		dev-libs/elfutils
		dev-util/geany
		sys-apps/fakeroot
		dev-python/pychroot
		sys-apps/mlocate
		dev-util/ccache
	)
	consulting? (
		net-analyzer/nmap
		net-analyzer/wireshark
	)
	backups? (
		app-backup/obnam
	)
"
