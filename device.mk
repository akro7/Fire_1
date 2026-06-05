#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/xiaomi/fire
# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service

PRODUCT_PACKAGES += \
    bootctrl.mt6768

PRODUCT_STATIC_BOOT_CONTROL_HAL := \
    bootctrl.mt6768 \
    libgptutils \
    libz \
    libcutils

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

# FBE / Decryption support
PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.0 \
    android.hardware.gatekeeper@1.0

# MTK vold / crypto
PRODUCT_PACKAGES += \
    libkeymaster4 \
    libkeymaster41 \
    libpuresoftkeymasterdevice

# Metadata / FBE
PRODUCT_PROPERTY_OVERRIDES += \
    ro.crypto.state=encrypted \
    ro.crypto.type=file \
    ro.crypto.volume.filenames_mode=aes-256-cts \
    ro.crypto.volume.contents_mode=aes-256-xts

# TWRP extras
PRODUCT_PACKAGES += \
    bash \
    python3 \
    curl \
    zip \
    unzip

# OrangeFox / TWRP metadata
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.tee.type=trusty \
    ro.hardware.keystore=mt6768
