# Auto-generated from dump – Redmi 12 (fire) MT6768
# TEE: beanpod (Microtrust)
# AKRO – 2026

PRODUCT_COPY_FILES += \
    device/xiaomi/fire/vendor_blobs/proprietary/aosp-device-tree/rootdir/etc/fstab.mt6768:$(TARGET_COPY_OUT_RECOVERY)/root/first_stage_ramdisk/fstab.mt6768 \
    \
    device/xiaomi/fire/vendor_blobs/proprietary/vendor/bin/hw/android.hardware.boot-service.mtk:$(TARGET_COPY_OUT_VENDOR)/bin/hw/android.hardware.boot-service.mtk \
    device/xiaomi/fire/vendor_blobs/proprietary/vendor/bin/hw/android.hardware.gatekeeper-service.beanpod:$(TARGET_COPY_OUT_VENDOR)/bin/hw/android.hardware.gatekeeper-service.beanpod \
    device/xiaomi/fire/vendor_blobs/proprietary/vendor/bin/hw/android.hardware.keymaster@4.1-service.beanpod:$(TARGET_COPY_OUT_VENDOR)/bin/hw/android.hardware.keymaster@4.1-service.beanpod \
    device/xiaomi/fire/vendor_blobs/proprietary/vendor/bin/hw/android.hardware.usb-aidl-service.mediatekv1.0:$(TARGET_COPY_OUT_VENDOR)/bin/hw/android.hardware.usb-aidl-service.mediatekv1.0 \
    device/xiaomi/fire/vendor_blobs/proprietary/vendor/bin/hw/android.hardware.usb.gadget-aidl-service.mediatekv1.0:$(TARGET_COPY_OUT_VENDOR)/bin/hw/android.hardware.usb.gadget-aidl-service.mediatekv1.0 \
    \
    device/xiaomi/fire/vendor_blobs/proprietary/vendor/etc/init/android.hardware.gatekeeper-service.beanpod.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/android.hardware.gatekeeper-service.beanpod.rc \
    device/xiaomi/fire/vendor_blobs/proprietary/vendor/etc/init/android.hardware.usb-aidl-service.mediatek.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/android.hardware.usb-aidl-service.mediatek.rc \
    device/xiaomi/fire/vendor_blobs/proprietary/vendor/etc/init/android.hardware.usb.gadget-aidl-service.mediatek.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/android.hardware.usb.gadget-aidl-service.mediatek.rc \
    \
    device/xiaomi/fire/vendor_blobs/proprietary/vendor/etc/init/hw/init.connectivity.common.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.connectivity.common.rc \
    device/xiaomi/fire/vendor_blobs/proprietary/vendor/etc/init/hw/init.connectivity.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.connectivity.rc \
    device/xiaomi/fire/vendor_blobs/proprietary/vendor/etc/init/hw/init.mt6768.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.mt6768.rc \
    device/xiaomi/fire/vendor_blobs/proprietary/vendor/etc/init/hw/init.mt6768.usb.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.mt6768.usb.rc \
    device/xiaomi/fire/vendor_blobs/proprietary/vendor/etc/init/hw/init.project.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.project.rc \
    \
    device/xiaomi/fire/vendor_blobs/proprietary/vendor/etc/vintf/manifest/android.hardware.gatekeeper-service.beanpod.xml:$(TARGET_COPY_OUT_VENDOR)/etc/vintf/manifest/android.hardware.gatekeeper-service.beanpod.xml \
    device/xiaomi/fire/vendor_blobs/proprietary/vendor/etc/vintf/manifest/android.hardware.usb-aidl-service.mediatek.xml:$(TARGET_COPY_OUT_VENDOR)/etc/vintf/manifest/android.hardware.usb-aidl-service.mediatek.xml \
    device/xiaomi/fire/vendor_blobs/proprietary/vendor/etc/vintf/manifest/android.hardware.usb.gadget-aidl-service.mediatek.xml:$(TARGET_COPY_OUT_VENDOR)/etc/vintf/manifest/android.hardware.usb.gadget-aidl-service.mediatek.xml \
    \
    device/xiaomi/fire/vendor_blobs/proprietary/vendor/lib64/android.hardware.gatekeeper-V1-ndk.so:$(TARGET_COPY_OUT_VENDOR)/lib64/android.hardware.gatekeeper-V1-ndk.so \
    device/xiaomi/fire/vendor_blobs/proprietary/vendor/lib64/android.hardware.keymaster@3.0.so:$(TARGET_COPY_OUT_VENDOR)/lib64/android.hardware.keymaster@3.0.so \
    device/xiaomi/fire/vendor_blobs/proprietary/vendor/lib64/android.hardware.keymaster@4.0.so:$(TARGET_COPY_OUT_VENDOR)/lib64/android.hardware.keymaster@4.0.so \
    device/xiaomi/fire/vendor_blobs/proprietary/vendor/lib64/android.hardware.keymaster@4.1.so:$(TARGET_COPY_OUT_VENDOR)/lib64/android.hardware.keymaster@4.1.so \
    device/xiaomi/fire/vendor_blobs/proprietary/vendor/lib64/android.hardware.security.keymint-V1-ndk.so:$(TARGET_COPY_OUT_VENDOR)/lib64/android.hardware.security.keymint-V1-ndk.so \
    device/xiaomi/fire/vendor_blobs/proprietary/vendor/lib64/android.hardware.security.keymint-V3-ndk.so:$(TARGET_COPY_OUT_VENDOR)/lib64/android.hardware.security.keymint-V3-ndk.so \
    device/xiaomi/fire/vendor_blobs/proprietary/vendor/lib64/android.hardware.usb-V1-ndk.so:$(TARGET_COPY_OUT_VENDOR)/lib64/android.hardware.usb-V1-ndk.so \
    device/xiaomi/fire/vendor_blobs/proprietary/vendor/lib64/android.hardware.usb.gadget-V1-ndk.so:$(TARGET_COPY_OUT_VENDOR)/lib64/android.hardware.usb.gadget-V1-ndk.so \
    device/xiaomi/fire/vendor_blobs/proprietary/vendor/lib64/libkeymaster4support.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libkeymaster4support.so \
    device/xiaomi/fire/vendor_blobs/proprietary/vendor/lib64/libkeymaster_messages.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libkeymaster_messages.so \
    device/xiaomi/fire/vendor_blobs/proprietary/vendor/lib64/libkeymaster_portable.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libkeymaster_portable.so \
    device/xiaomi/fire/vendor_blobs/proprietary/vendor/lib64/libpuresoftkeymasterdevice.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libpuresoftkeymasterdevice.so \
    \
    device/xiaomi/fire/vendor_blobs/proprietary/system/bin/gatekeeperd:$(TARGET_COPY_OUT_SYSTEM)/bin/gatekeeperd \
    \
    device/xiaomi/fire/vendor_blobs/proprietary/system/lib64/android.hardware.gatekeeper-V1-ndk.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/android.hardware.gatekeeper-V1-ndk.so \
    device/xiaomi/fire/vendor_blobs/proprietary/system/lib64/android.hardware.gatekeeper@1.0.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/android.hardware.gatekeeper@1.0.so \
    device/xiaomi/fire/vendor_blobs/proprietary/system/lib64/android.hardware.keymaster@3.0.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/android.hardware.keymaster@3.0.so \
    device/xiaomi/fire/vendor_blobs/proprietary/system/lib64/android.hardware.keymaster@4.0.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/android.hardware.keymaster@4.0.so \
    device/xiaomi/fire/vendor_blobs/proprietary/system/lib64/android.hardware.keymaster@4.1.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/android.hardware.keymaster@4.1.so \
    device/xiaomi/fire/vendor_blobs/proprietary/system/lib64/lib_android_keymaster_keymint_utils.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/lib_android_keymaster_keymint_utils.so \
    device/xiaomi/fire/vendor_blobs/proprietary/system/lib64/libgatekeeper.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libgatekeeper.so \
    device/xiaomi/fire/vendor_blobs/proprietary/system/lib64/libgatekeeper_aidl.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libgatekeeper_aidl.so \
    device/xiaomi/fire/vendor_blobs/proprietary/system/lib64/libkeymaster4_1support.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libkeymaster4_1support.so \
    device/xiaomi/fire/vendor_blobs/proprietary/system/lib64/libkeymaster4support.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libkeymaster4support.so \
    device/xiaomi/fire/vendor_blobs/proprietary/system/lib64/libkeymaster_messages.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libkeymaster_messages.so \
    device/xiaomi/fire/vendor_blobs/proprietary/system/lib64/libkeymaster_portable.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libkeymaster_portable.so \
    device/xiaomi/fire/vendor_blobs/proprietary/system/lib64/libkeymint.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libkeymint.so \
    device/xiaomi/fire/vendor_blobs/proprietary/system/lib64/libkeymint_support.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libkeymint_support.so \
    device/xiaomi/fire/vendor_blobs/proprietary/system/lib64/libpuresoftkeymasterdevice.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libpuresoftkeymasterdevice.so
