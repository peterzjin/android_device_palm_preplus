LOCAL_PATH := $(call my-dir)

file := $(TARGET_OUT_KEYLAYOUT)/gpio-keys.kl
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/gpio-keys.kl | $(ACP)
	$(transform-prebuilt-to-target)

file := $(TARGET_OUT_KEYLAYOUT)/maxim_keypad.kl
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/maxim_keypad.kl | $(ACP)
	$(transform-prebuilt-to-target)

preplus: droid
ifeq ($(TARGET_USE_EXT3_USERDATA_IMG),true)
	dd if=/dev/zero of=$(PRODUCT_OUT)/userdata.ext3 bs=1MiB count=48
	mkfs.ext3 -F $(PRODUCT_OUT)/userdata.ext3
endif
