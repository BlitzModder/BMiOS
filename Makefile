ARCHS = arm64 armv7s
TARGET = iphone:clang::7.0

include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = BlitzModder
BlitzModder_FILES = $(shell find . -type f -name '*.c' -o -name '*.m')
BlitzModder_FRAMEWORKS = UIKit CoreGraphics QuartzCore WebKit MessageUI

ADDITIONAL_OBJCFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/application.mk

before-package::
	@sh packager.sh
