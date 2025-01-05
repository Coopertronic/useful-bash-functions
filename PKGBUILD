# Maintainer: Matthew Phillip Cooper <matthew@coopertronic.co.uk>
##	Odd one out
pkgname=ctos-functions
_pkgname=useful-bash-functions
_destname1="/usr"
pkgver=1.r107.100c132
pkgrel=1
pkgdesc="Useful functions to make my other scripts work."
arch=('any')
url="https://github.com/Coopertronic/useful-bash-functions.git"
license=('GPL2')
makedepends=('git' 'go-md2man')
depends=('git')
conflicts=()
provides=("${pkgname}")
options=(!strip !emptydirs)
source=("git+$url")
sha256sums=('SKIP')

pkgver() {
    cd "${srcdir}/${_pkgname}"
    printf "1.r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}

package() {
	echo "Run Install command"
	install -dm755 ${pkgdir}${_destname1}
	echo "Run copy command"
	echo "copy from"
	cp -r ${srcdir}/${_pkgname}${_destname1}/* ${pkgdir}${_destname1}

	##  Install documentation
    install -d $pkgdir/usr/share/man/man1
    install -d $pkgdir/usr/share/doc/$pkgname
    go-md2man -in $srcdir/$_pkgname/README.md -out $srcdir/$_pkgname/$pkgname.1
    install -D -m644 $srcdir/$_pkgname/$pkgname.1 $pkgdir/usr/share/man/man1/$pkgname.1
    install -D -m644 $srcdir/$_pkgname/README.md $pkgdir/usr/share/doc/$pkgname/README.md
}
