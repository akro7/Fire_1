#!/usr/bin/env bash
#
# vendorsetup.sh - OrangeFox R12 Environment
# Device: Redmi 12 (fire) - MT6768
#

export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache

export LC_ALL="C"
export TARGET_ARCH="arm64"
export OF_MAINTAINER="AKRO"
export FOX_BUILD_TYPE="Unofficial"
export FOX_AB_DEVICE="1"
export FOX_VIRTUAL_AB_DEVICE="1"
export FOX_VENDOR_BOOT_RECOVERY="1"
export FOX_VANILLA_BUILD="1"
export OF_USE_LZ4_COMPRESSION="1"
export ALLOW_MISSING_DEPENDENCIES=true
export OF_SCREEN_H="2460"
export OF_STATUS_H="100"
export OF_STATUS_INDENT_LEFT="48"
export OF_STATUS_INDENT_RIGHT="48"
export OF_CLOCK_POS="1"
export OF_FLASHLIGHT_ENABLE="1"
export OF_FL_PATH1="/sys/class/leds/flashlight/brightness"
export OF_DYNAMIC_FULL_SIZE="9126805504"
export OF_FBE_METADATA_MOUNT_IGNORE="1"
export OF_IGNORE_LOGICAL_MOUNT_ERRORS="1"
export OF_DEFAULT_KEYMASTER_VERSION="4.1"
export OF_NO_REFLASH_CURRENT_ORANGEFOX="1"
export FOX_USE_UPDATED_MAGISKBOOT="1"
export OF_QUICK_BACKUP_LIST="/data;/boot;/vendor_boot;"
export FOX_USE_TAR_BINARY="1"
export FOX_USE_SED_BINARY="1"
export FOX_USE_BASH_SHELL="1"
export FOX_ASH_IS_BASH="1"
export OF_ENABLE_LPTOOLS="1"
export OF_FORCE_PREBUILT_KERNEL="1"
export OF_NO_MIUI_OTA_VENDOR_BACKUP="1"
export FOX_ENABLE_APP_MANAGER="0"
export FOX_DELETE_AROMAFM="0"
export FOX_INSTALLER_DEBUG_MODE="0"
export FOX_MAINTAINER_PATCH_VERSION="1"

echo "[OrangeFox R12] Environment loaded for fire (vendor_boot A/B)"
