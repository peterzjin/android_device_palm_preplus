LOCAL_PATH := $(call my-dir)

file := $(TARGET_OUT_KEYLAYOUT)/gpio-keys.kl
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/gpio-keys.kl | $(ACP)
	$(transform-prebuilt-to-target)

file := $(TARGET_OUT_KEYLAYOUT)/maxim_keypad.kl
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/maxim_keypad.kl | $(ACP)
	$(transform-prebuilt-to-target)
