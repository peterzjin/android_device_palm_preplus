#
# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := generic_preplus
PRODUCT_DEVICE := preplus

PRODUCT_COPY_FILES += \
    device/palm/preplus/init.rc:root/init.rc \
    device/palm/preplus/init.preplus.rc:root/init.preplus.rc

# audio scripts from webos
PRODUCT_COPY_FILES += \
    device/palm/preplus/etc/audio/default.txt:system/etc/audio/default.txt \
    device/palm/preplus/etc/audio/dtmf.txt:system/etc/audio/dtmf.txt \
    device/palm/preplus/etc/audio/media_a2dp.txt:system/etc/audio/media_a2dp.txt \
    device/palm/preplus/etc/audio/media_back_speaker.txt:system/etc/audio/media_back_speaker.txt \
    device/palm/preplus/etc/audio/media_front_speaker.txt:system/etc/audio/media_front_speaker.txt \
    device/palm/preplus/etc/audio/media_headset_mic.txt:system/etc/audio/media_headset_mic.txt \
    device/palm/preplus/etc/audio/media_headset.txt:system/etc/audio/media_headset.txt \
    device/palm/preplus/etc/audio/media_wireless.txt:system/etc/audio/media_wireless.txt \
    device/palm/preplus/etc/audio/phone_back_speaker.txt:system/etc/audio/phone_back_speaker.txt \
    device/palm/preplus/etc/audio/phone_bluetooth_sco.txt:system/etc/audio/phone_bluetooth_sco.txt \
    device/palm/preplus/etc/audio/phone_front_speaker.txt:system/etc/audio/phone_front_speaker.txt \
    device/palm/preplus/etc/audio/phone_headset_mic.txt:system/etc/audio/phone_headset_mic.txt \
    device/palm/preplus/etc/audio/phone_headset.txt:system/etc/audio/phone_headset.txt \
    device/palm/preplus/etc/audio/phone_tty_full.txt:system/etc/audio/phone_tty_full.txt \
    device/palm/preplus/etc/audio/phone_tty_hco.txt:system/etc/audio/phone_tty_hco.txt \
    device/palm/preplus/etc/audio/phone_tty_vco.txt:system/etc/audio/phone_tty_vco.txt \
    device/palm/preplus/etc/audio/scenarios.xml:system/etc/audio/scenarios.xml \
    device/palm/preplus/etc/audio/voice_command_back_speaker.txt:system/etc/audio/voice_command_back_speaker.txt \
    device/palm/preplus/etc/audio/voice_command_bluetooth_sco.txt:system/etc/audio/voice_command_bluetooth_sco.txt \
    device/palm/preplus/etc/audio/voice_command_headset_mic.txt:system/etc/audio/voice_command_headset_mic.txt \
    device/palm/preplus/etc/audio/voice_command_headset.txt:system/etc/audio/voice_command_headset.txt

#
PRODUCT_PACKAGES += \
    alsa.preplus

# wifi firmware
PRODUCT_COPY_FILES += \
	device/palm/preplus/wifi/firmware/mrvl/helper_sd.bin:system/etc/firmware/mrvl/helper_sd.bin \
	device/palm/preplus/wifi/firmware/mrvl/sd8686.bin:system/etc/firmware/mrvl/sd8686.bin \
	device/palm/preplus/wifi/firmware/mrvl/sd8686_ap.bin:system/etc/firmware/mrvl/sd8686_ap.bin \
	device/palm/preplus/wifi/firmware/mrvl/mfg_sd8686.bin:system/etc/firmware/mrvl/mfg_sd8686.bin

# wifi drivers
PRODUCT_COPY_FILES += \
	device/palm/preplus/wifi/modules/sd8xxx.ko:system/lib/modules/sd8xxx.ko \
	device/palm/preplus/wifi/modules/uap8xxx.ko:system/lib/modules/uap8xxx.ko

# wpa_supplicant.conf
PRODUCT_COPY_FILES += \
	device/palm/preplus/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# dhcpcd.conf
PRODUCT_COPY_FILES += \
	device/palm/preplus/etc/dhcpcd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf
