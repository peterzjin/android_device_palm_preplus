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
    device/palm/preplus/init.sirloin.rc:root/init.sirloin.rc \
    device/palm/preplus/vold.fstab:system/etc/vold.fstab

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

# alsa audio for preplus
PRODUCT_PACKAGES += \
    alsa.omap3

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

# PowerVR SGX DDK Lib
PRODUCT_COPY_FILES += \
    device/palm/preplus/pvr/lib/libfakehal.so:system/lib/libfakehal.so \
    device/palm/preplus/pvr/lib/libglslcompiler.so:system/lib/libglslcompiler.so \
    device/palm/preplus/pvr/lib/libIMGegl.so:system/lib/libIMGegl.so \
    device/palm/preplus/pvr/lib/libpvr2d.so:system/lib/libpvr2d.so \
    device/palm/preplus/pvr/lib/libpvrANDROID_WSEGL.so:system/lib/libpvrANDROID_WSEGL.so \
    device/palm/preplus/pvr/lib/libPVRScopeServices.so:system/lib/libPVRScopeServices.so \
    device/palm/preplus/pvr/lib/libsfutil.so:system/lib/libsfutil.so \
    device/palm/preplus/pvr/lib/libsrv_um.so:system/lib/libsrv_um.so \
    device/palm/preplus/pvr/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
    device/palm/preplus/pvr/lib/egl/libEGL_POWERVR_SGX530_121.so:system/lib/egl/libEGL_POWERVR_SGX530_121.so \
    device/palm/preplus/pvr/lib/egl/libGLESv1_CM_POWERVR_SGX530_121.so:system/lib/egl/libGLESv1_CM_POWERVR_SGX530_121.so \
    device/palm/preplus/pvr/lib/egl/libGLESv2_POWERVR_SGX530_121.so:system/lib/egl/libGLESv2_POWERVR_SGX530_121.so \
    device/palm/preplus/pvr/lib/hw/gralloc.omap3.so:system/lib/hw/gralloc.omap3.so \
    device/palm/preplus/pvr/lib/modules/omaplfb.ko:system/lib/modules/omaplfb.ko \
    device/palm/preplus/pvr/lib/modules/pvrsrvkm.ko:system/lib/modules/pvrsrvkm.ko \
    device/palm/preplus/pvr/bin/pvrsrvinit:system/bin/pvrsrvinit \
    device/palm/preplus/pvr/bin/rc.pvr:system/bin/rc.pvr

# dsp
PRODUCT_PACKAGES += \
	dspexec \
	libbridge \
	libOMX.TI.AAC.encode \
	libOMX.TI.AMR.encode \
	libOMX.TI.WBAMR.encode \
	libOMX.TI.JPEG.Encoder \
	libLCML \
	libOMX_Core \
	libOMX.TI.Video.Decoder \
	libOMX.TI.Video.encoder \
	libVendor_ti_omx

PRODUCT_COPY_FILES += \
    device/palm/preplus/dsp/bridgedriver.ko:system/lib/modules/bridgedriver.ko \
    device/palm/preplus/dsp/baseimage.dof:system/lib/dsp/baseimage.dof \
    device/palm/preplus/dsp/chromasuppress.l64p:system/lib/dsp/chromasuppress.l64p \
    device/palm/preplus/dsp/conversions.dll64P:system/lib/dsp/conversions.dll64P \
    device/palm/preplus/dsp/dctn_dyn.dll64P:system/lib/dsp/dctn_dyn.dll64P \
    device/palm/preplus/dsp/dfgm.dll64P:system/lib/dsp/dfgm.dll64P \
    device/palm/preplus/dsp/eenf_ti.l64P:system/lib/dsp/eenf_ti.l64P \
    device/palm/preplus/dsp/h264vdec_sn.dll64P:system/lib/dsp/h264vdec_sn.dll64P \
    device/palm/preplus/dsp/ipp_sn.dll64P:system/lib/dsp/ipp_sn.dll64P \
    device/palm/preplus/dsp/jpegdec_sn.dll64P:system/lib/dsp/jpegdec_sn.dll64P \
    device/palm/preplus/dsp/jpegenc_sn.dll64P:system/lib/dsp/jpegenc_sn.dll64P \
    device/palm/preplus/dsp/m4venc_sn.dll64P:system/lib/dsp/m4venc_sn.dll64P \
    device/palm/preplus/dsp/mp3dec_sn.dll64P:system/lib/dsp/mp3dec_sn.dll64P \
    device/palm/preplus/dsp/mp4vdec_sn.dll64P:system/lib/dsp/mp4vdec_sn.dll64P \
    device/palm/preplus/dsp/mpeg4aacdec_sn.dll64P:system/lib/dsp/mpeg4aacdec_sn.dll64P \
    device/palm/preplus/dsp/mpeg4aacenc_sn.dll64P:system/lib/dsp/mpeg4aacenc_sn.dll64P \
    device/palm/preplus/dsp/nbamrdec_sn.dll64P:system/lib/dsp/nbamrdec_sn.dll6P \
    device/palm/preplus/dsp/pcmd_tn.dll64P:system/lib/dsp/pcmd_tn.dll64P \
    device/palm/preplus/dsp/ringio.dll64P:system/lib/dsp/ringio.dll64P \
    device/palm/preplus/dsp/star.l64P:system/lib/dsp/star.l64P \
    device/palm/preplus/dsp/usn.dll64P:system/lib/dsp/usn.dll64P \
    device/palm/preplus/dsp/vpp_sn.dll64P:system/lib/dsp/vpp_sn.dll64P \
    device/palm/preplus/dsp/yuvconvert.l64p:system/lib/dsp/yuvconvert.l64p
