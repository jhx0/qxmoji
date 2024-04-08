qxmoji_VERSION=		0.1
qxmoji_MODULES=		emoji
qxmoji_CXXMODULES=	main \
			$(qxmoji_PREPROCMODULES)
qxmoji_PREPROCMODULES=	emojibutton \
			qxmoji \
			qxmojiwin
qxmoji_PREPROC=		MOC
qxmoji_PREPROCFLAGS=	-p.
qxmoji_INCLUDES=	-I$(qxmoji_PPSRCDIR)
qxmoji_CXXFLAGS=	-fPIC
qxmoji_PKGDEPS=		Qt5Core \
			Qt5Gui \
			Qt5Widgets
qxmoji_SUB_FILES=	decl.h

$(call binrules,qxmoji)
