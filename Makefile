ARCHS = arm64
TARGET = iphone:clang::

include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = BlitzModder
BlitzModder_FILES = $(wildcard *.m) $(wildcard SVProgressHUD/*.m)
BlitzModder_FRAMEWORKS = UIKit CoreGraphics QuartzCore WebKit MessageUI

ADDITIONAL_OBJCFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/application.mk

before-package::
	@sh packager.sh
