PORTNAME=	opencanary
DISTVERSION=	0.8.0
DISTVERSIONPREFIX=      v
CATEGORIES=	security
MASTER_SITES=

MAINTAINER=	freebsd@thinkst.com
COMMENT=	OpenCanary creates a network honeypot allowing you to \
		catch hackers before they fully compromise your systems

LICENSE=	BSD3CLAUSE

USES=	python:3.8+	shebangfix	fakeroot	gettext

SHEBANG_FILES=	bin/opencanaryd

USE_PYTHON=	distutils noflavors autoplist

USE_GITHUB=	yes
GH_ACCOUNT=	thinkst
GH_PROJECT=	opencanary

EXTRACT_DEPENDS=${PYTHON_PKGNAMEPREFIX}setuptools>0:devel/py-setuptools \
		${PYTHON_PKGNAMEPREFIX}setuptools-pkg>0:devel/py-setuptools-pkg


BUILD_DEPENDS=	${PYTHON_PKGNAMEPREFIX}pip>0:devel/py-pip \
		${PYTHON_PKGNAMEPREFIX}twisted>0:devel/py-twisted \
		${PYTHON_PKGNAMEPREFIX}pyasn1>0:devel/py-pyasn1 \
		${PYTHON_PKGNAMEPREFIX}cryptography>0:security/py-cryptography \
		${PYTHON_PKGNAMEPREFIX}simplejson>0:devel/py-simplejson \
		${PYTHON_PKGNAMEPREFIX}requests>0:www/py-requests \
		${PYTHON_PKGNAMEPREFIX}zope.interface>0:devel/py-zope.interface \
		${PYTHON_PKGNAMEPREFIX}pypdf3>0:print/py-pypdf3 \
		${PYTHON_PKGNAMEPREFIX}fpdf>0:print/py-fpdf \
		${PYTHON_PKGNAMEPREFIX}passlib>0:security/py-passlib \
		${PYTHON_PKGNAMEPREFIX}Jinja2>0:devel/py-Jinja2 \
		${PYTHON_PKGNAMEPREFIX}bcrypt>0:security/py-bcrypt

RUN_DEPENDS=	bash:shells/bash \
		sudo:security/sudo

.include <bsd.port.mk>
