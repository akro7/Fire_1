#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 AKRO - Redmi 12 (fire) MT6768
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/twrp_fire.mk \
    $(LOCAL_DIR)/fox_fire.mk

# COMMON_LUNCH_CHOICES registers products in lunch
COMMON_LUNCH_CHOICES := \
    twrp_fire-eng \
    twrp_fire-userdebug \
    fox_fire-eng \
    fox_fire-userdebug
