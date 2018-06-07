FOR_RELEASE=1
ARCHS = armv7 arm64
TARGET = iphone:clang
export THEOS_DEVICE_IP=172.16.0.17
include theos/makefiles/common.mk

TWEAK_NAME = SupportTheUnsupported

SupportTheUnsupported_FRAMEWORKS = Foundation UIKit

SupportTheUnsupported_LDFLAGS = -lobjc

SupportTheUnsupported_FILES = Tweak.xm

include theos/makefiles/tweak.mk

after-install::
	install.exec "killall -9 springboard"