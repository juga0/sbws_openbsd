# $OpenBSD: Makefile,v 1.2 2018/07/26 19:51:53 jasper Exp $

COMMENT =		Tor Simple Bandwidth Scanner

MODPY_EGG_VERSION =	0.6.0
V =			${MODPY_EGG_VERSION:S/b//}
DISTNAME =		sbws-${MODPY_EGG_VERSION}
PKGNAME =		py-sbws-${V}

GH_ACCOUNT =		pastly
GH_PROJECT =		simple-bw-scanner
GH_COMMIT =		2b111356fb813379ab0b4a0dc705706766788ad3

CATEGORIES =		net

HOMEPAGE =		https://git.torproject.org/sbws/

MAINTAINER =		gman999, juga

# CC0-1.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS =		net/py-socks${MODPY_FLAVOR} \
			net/py-stem${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

RUN_DEPENDS =		${BUILD_DEPENDS}

NO_TEST =		Yes

#TEST_DEPENDS =	${RUN_DEPENDS} \
#                devel/py-test${MODPY_FLAVOR}

#do-test:
#        cd ${WRKSRC} && ${MODPY_BIN} -m pytest

.include <bsd.port.mk>
