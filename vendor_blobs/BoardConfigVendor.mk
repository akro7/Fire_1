#
# Copyright (C) 2026 OrangeFox/TWRP Recovery Project
# Copyright (C) 2026 AKRO – Redmi 12 (fire) MT6768
# TEE: beanpod (Microtrust)
#
# SPDX-License-Identifier: Apache-2.0
#

# VINTF Manifests – beanpod gatekeeper + USB
DEVICE_MANIFEST_FILE += \
    $(DEVICE_PATH)/vendor_blobs/proprietary/vendor/etc/vintf/manifest/android.hardware.gatekeeper-service.beanpod.xml \
    $(DEVICE_PATH)/vendor_blobs/proprietary/vendor/etc/vintf/manifest/android.hardware.usb-aidl-service.mediatek.xml \
    $(DEVICE_PATH)/vendor_blobs/proprietary/vendor/etc/vintf/manifest/android.hardware.usb.gadget-aidl-service.mediatek.xml

DEVICE_MANIFEST_FILES += \
    $(DEVICE_PATH)/vendor_blobs/proprietary/vendor/etc/vintf/manifest/android.hardware.gatekeeper-service.beanpod.xml
DEVICE_MANIFEST_FILES += \
    $(DEVICE_PATH)/vendor_blobs/proprietary/vendor/etc/vintf/manifest/android.hardware.usb-aidl-service.mediatek.xml
DEVICE_MANIFEST_FILES += \
    $(DEVICE_PATH)/vendor_blobs/proprietary/vendor/etc/vintf/manifest/android.hardware.usb.gadget-aidl-service.mediatek.xml

# Relax VINTF strictness for TWRP/OrangeFox
BUILD_BROKEN_VINTF_CHECKS := true
BUILD_BROKEN_DUP_RULES := true

# BootConfig
BOARD_BOOTCONFIG := bootopt=64S3,32N2,64N2
