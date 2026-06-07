#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/fire

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# A/B
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += \
    vendor_dlkm \
    system_ext \
    system_dlkm \
    vendor \
    system \
    boot \
    vendor_boot \
    vbmeta_system \
    odm_dlkm \
    product \
    vbmeta_vendor

BOARD_USES_RECOVERY_AS_BOOT                   := false
BOARD_MOVE_RECOVERY_RESOURCES_TO_VENDOR_BOOT  := true
BOARD_INCLUDE_RECOVERY_RAMDISK_IN_VENDOR_BOOT := true
TARGET_NO_RECOVERY                            := true
BOARD_USES_GENERIC_KERNEL_IMAGE               := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a53

# APEX
DEXPREOPT_GENERATE_APEX_IMAGE := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := fire
TARGET_NO_BOOTLOADER := true

# Display
TARGET_SCREEN_DENSITY := 440
TARGET_USES_VULKAN := true

# Kernel - GKI style (no kernel build)
BOARD_BOOTIMG_HEADER_VERSION  := 4
BOARD_KERNEL_BASE             := 0x40078000
BOARD_KERNEL_PAGESIZE         := 4096
BOARD_KERNEL_OFFSET           := 0x00008000
BOARD_RAMDISK_OFFSET          := 0x07c08000
BOARD_KERNEL_TAGS_OFFSET      := 0x0bc08000
BOARD_DTB_OFFSET              := 0x0bc08000
BOARD_KERNEL_CMDLINE          := bootopt=64S3,32N2,64N2
BOARD_VENDOR_CMDLINE          := bootopt=64S3,32N2,64N2
BOARD_KERNEL_IMAGE_NAME       := Image

BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset    $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --vendor_cmdline $(BOARD_VENDOR_CMDLINE)
BOARD_MKBOOTIMG_ARGS += --pagesize       $(BOARD_KERNEL_PAGESIZE)
BOARD_MKBOOTIMG_ARGS += --kernel_offset  $(BOARD_KERNEL_OFFSET)

TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
BOARD_MKBOOTIMG_ARGS += --dtb        $(TARGET_PREBUILT_DTB)
BOARD_MKBOOTIMG_ARGS += --dtb_offset $(BOARD_DTB_OFFSET)

TARGET_NO_KERNEL             := true
BOARD_INCLUDE_DTB_IN_BOOTIMG :=
BOARD_KERNEL_SEPARATED_DTBO  :=
BOARD_PREBUILT_DTBOIMAGE      :=

# Partitions
BOARD_FLASH_BLOCK_SIZE                := 262144
BOARD_BOOTIMAGE_PARTITION_SIZE        := 67108864
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_HAS_LARGE_FILESYSTEM            := true
BOARD_SYSTEMIMAGE_PARTITION_TYPE      := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE  := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE    := ext4
TARGET_COPY_OUT_VENDOR                := vendor
BOARD_SUPER_PARTITION_SIZE            := 9126805504
BOARD_SUPER_PARTITION_GROUPS          := xiaomi_dynamic_partitions
BOARD_XIAOMI_DYNAMIC_PARTITIONS_PARTITION_LIST := system system_ext vendor product mi_ext vendor_dlkm odm_dlkm system_dlkm
BOARD_XIAOMI_DYNAMIC_PARTITIONS_SIZE  := 9122611200

# Platform
TARGET_BOARD_PLATFORM := mt6768

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := BGRA_8888
TARGET_USERIMAGES_USE_EXT4   := true
TARGET_USERIMAGES_USE_F2FS   := true

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
BOARD_AVB_VENDOR_BOOT_KEY_PATH               := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_VENDOR_BOOT_ALGORITHM              := SHA256_RSA4096
BOARD_AVB_VENDOR_BOOT_ROLLBACK_INDEX         := 1
BOARD_AVB_VENDOR_BOOT_ROLLBACK_INDEX_LOCATION := 1

# Hack: prevent anti rollback
PLATFORM_SECURITY_PATCH      := 2099-12-31
VENDOR_SECURITY_PATCH        := 2099-12-31
BOOT_SECURITY_PATCH          := 2099-12-31
PLATFORM_VERSION             := 16.1.0
PLATFORM_VERSION_LAST_STABLE := 16

# TWRP Configuration
TW_THEME             := portrait_hdpi
TW_EXTRA_LANGUAGES   := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST   := "hbtp_vm"
TW_USE_TOOLBOX       := true
TW_INCLUDE_REPACKTOOLS := true

# TWRP - Display & Touch
TW_BRIGHTNESS_PATH   := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS    := 2047
TW_DEFAULT_BRIGHTNESS := 1200
TW_NO_SCREEN_BLANK   := false
TW_FRAMERATE         := 60

# TWRP - USB & ADB
TW_INCLUDE_NTFS_3G  := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /config/usb_gadget/g1/functions/mass_storage.usb0/lun/file
TW_HAS_MTP          := true
TW_MTP_DEVICE       := /dev/mtp_usb

# TWRP - Crypto / FBE Decryption (HyperOS 2 / Android 15)
TW_INCLUDE_CRYPTO            := true
TW_INCLUDE_CRYPTO_FBE        := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true
TW_USE_FSCRYPT_POLICY        := 2
TW_FORCE_KEYMASTER_VER       := 4.1
BOARD_USES_METADATA_PARTITION := true
TW_PREPARE_DATA_MEDIA_EARLY  := true
TW_ENABLE_SNAPUSERD          := true

# Crypto libs from vendor
TW_CRYPTO_USE_SYSTEM_VOLD := true
RECOVERY_SDCARD_ON_DATA   := true

# TWRP - OTA / Fastboot / Sideload
TW_INCLUDE_FASTBOOTD    := true
TW_INCLUDE_LIBRESETPROP := true
TW_INCLUDE_RESETPROP    := true
TW_INCLUDE_BASH         := true
TW_INCLUDE_PYTHON       := true
TW_LOAD_VENDOR_BOOT_MODULES := true

# TWRP - Logical / Dynamic Partitions
BOARD_HAS_NO_REAL_SDCARD  := true
TW_EXCLUDE_DEFAULT_USB_INIT := true

# Logging
TARGET_USES_LOGD    := true
TWRP_INCLUDE_LOGCAT := true

# OrangeFox flags
FOX_MAINTAINER        := AKRO
FOX_DEVICE_CODE       := fire
FOX_TARGET_DEVICES    := fire
FOX_AB_DEVICE         := 1
FOX_VIRTUAL_AB_DEVICE := 1
FOX_VENDOR_BOOT_RECOVERY := 1

# --- AKRO Custom Patches ---
TW_VARIANT     := AKRO-UNOFFICIAL
TW_DEVICE_VERSION := AKRO_V5

# Recovery fstab (placed inside vendor_boot ramdisk under system/etc)
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/system/etc/recovery.fstab

# Vendor Boot Configuration
TARGET_NO_RECOVERY := true
BOARD_INCLUDE_RECOVERY_RAMDISK_IN_VENDOR_BOOT := true

# VINTF manifests – beanpod TEE (fire/MT6768)
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

# Relax VINTF / kernel checks
BUILD_BROKEN_VINTF_CHECKS := true
BUILD_BROKEN_DUP_RULES := true

# BootConfig
BOARD_BOOTCONFIG := bootopt=64S3,32N2,64N2

-include $(DEVICE_PATH)/vendor_blobs/BoardConfigVendor.mk
