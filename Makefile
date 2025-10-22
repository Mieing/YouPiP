ifeq ($(THEOS_PACKAGE_SCHEME),rootless)
	TARGET = iphone:clang:latest:15.6
else ifeq ($(THEOS_PACKAGE_SCHEME),roothide)
	TARGET = iphone:clang:latest:15.6
else
	TARGET = iphone:clang:latest:15.6
endif
ARCHS = arm64
INSTALL_TARGET_PROCESSES = YouTube

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = YouPiP
$(TWEAK_NAME)_FILES = Tweak.x Settings.x LegacyPiPCompat.x
$(TWEAK_NAME)_CFLAGS = -fobjc-arc
$(TWEAK_NAME)_FRAMEWORKS = AVFoundation AVKit UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
