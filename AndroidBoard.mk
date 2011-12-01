LOCAL_PATH := $(call my-dir)

file := $(TARGET_OUT_KEYLAYOUT)/gpio-keys.kl
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/gpio-keys.kl | $(ACP)
	$(transform-prebuilt-to-target)

file := $(TARGET_OUT_KEYLAYOUT)/maxim_keypad.kl
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/maxim_keypad.kl | $(ACP)
	$(transform-prebuilt-to-target)

PREPLUS_DIR := preplus
PREPLUS_IMG := $(PREPLUS_DIR).img
PREPLUS_TARBALL := $(PREPLUS_DIR).tar.gz
PREPLUS_IMG_SIZE := 655360
TARGET_PREPLUS_OUT := $(PRODUCT_OUT)/$(PREPLUS_DIR)
PREPLUS_USERDATA_SIZE := 262144
PREPLUS_USERDATA_IMG := userdata.ext3
PREPLUS_CACHE_SIZE := 98304
PREPLUS_CACHE_IMG := cache.ext3

preplus: droid
	$(hide) rm -rf $(TARGET_PREPLUS_OUT) $(PRODUCT_OUT)/$(PREPLUS_IMG) $(PRODUCT_OUT)/$(PREPLUS_TARBALL)
	$(hide) mkdir -p $(TARGET_PREPLUS_OUT)
	$(hide) echo "Copying files to preplus ..."
	$(hide) cp -rfd $(TARGET_ROOT_OUT)/* $(TARGET_PREPLUS_OUT)
	$(hide) cp -rfd $(TARGET_OUT) $(TARGET_PREPLUS_OUT)
	$(hide) echo "Done. Building data image ..."
	$(hide) $(MKEXT2IMG) -d $(TARGET_OUT_DATA) -b $(PREPLUS_USERDATA_SIZE) $(TARGET_PREPLUS_OUT)/$(PREPLUS_USERDATA_IMG)
	$(hide) tune2fs -j $(TARGET_PREPLUS_OUT)/$(PREPLUS_USERDATA_IMG)
	$(hide) echo "Done. Building cache image ..."
	$(hide) dd if=/dev/zero of=$(TARGET_PREPLUS_OUT)/$(PREPLUS_CACHE_IMG) bs=1KiB count=$(PREPLUS_CACHE_SIZE)
	$(hide) mkfs.ext3 -F $(TARGET_PREPLUS_OUT)/$(PREPLUS_CACHE_IMG)
	$(hide) echo "Done. Building whole filesystem image ..."
	$(hide) $(MKEXT2IMG) -d $(TARGET_PREPLUS_OUT) -b $(PREPLUS_IMG_SIZE) $(PRODUCT_OUT)/$(PREPLUS_IMG)
	$(hide) tune2fs -j $(PRODUCT_OUT)/$(PREPLUS_IMG)
	$(hide) echo "Done. Making tarball ..."
	$(hide) tar --remove-files --directory=$(PRODUCT_OUT) -zcvf $(PRODUCT_OUT)/$(PREPLUS_TARBALL) $(PREPLUS_IMG)
	$(hide) echo "Done. $(PREPLUS_TARBALL) is ready, enjoy!"
