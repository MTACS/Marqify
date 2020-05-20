TARGET = iphone:clang:13.0:13.0
ARCHS = arm64 arm64e
DEBUG = 0
FINALPACKAGE = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Marqify

Marqify_FILES = Tweak.xm
Marqify_CFLAGS = -fobjc-arc
Marqify_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "sbreload"
