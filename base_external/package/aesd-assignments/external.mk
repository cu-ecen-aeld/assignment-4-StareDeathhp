AESD_ASSIGNMENTS_VERSION = main
AESD_ASSIGNMENTS_SITE = git@github.com:yourusername/assignments-3-and-later-<YourGHUsername>.git
AESD_ASSIGNMENTS_DEPENDENCIES =
AESD_ASSIGNMENTS_LICENSE = MIT
AESD_ASSIGNMENTS_TERM = Finder scripts and utilities

define AESD_ASSIGNMENTS_BUILD_CMDS
    # copy writer, finder.sh, tester.sh, conf/* into $(TARGET_DIR)/usr/bin
    mkdir -p $(TARGET_DIR)/usr/bin
    cp $$(BUILD_DIR)/aesd-assignments/finder-app/writer $(TARGET_DIR)/usr/bin/
    cp $$(BUILD_DIR)/aesd-assignments/finder-app/finder.sh $(TARGET_DIR)/usr/bin/
    cp $$(BUILD_DIR)/aesd-assignments/finder-app/finder-test.sh $(TARGET_DIR)/usr/bin/finder-test.sh
    mkdir -p $(TARGET_DIR)/etc/finder-app/conf
    cp $$(BUILD_DIR)/aesd-assignments/finder-app/conf/* $(TARGET_DIR)/etc/finder-app/conf/
endef

AESD_ASSIGNMENTS_BUILD_CMDS +=
