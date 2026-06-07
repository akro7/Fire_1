# Device Tree - Xiaomi Redmi 12 (fire)
### TWRP / OrangeFox Recovery Tree
**Maintained by:** AKRO  
**ROM Version:** HyperOS 2.0.207.0.VMXMIXM  
**Android:** 15 (AP3A.240905.015.A2)  
**SoC:** MediaTek MT6768  
**Codename:** fire  

---

## Build Instructions

### TWRP
```bash
source build/envsetup.sh
lunch twrp_fire-eng
mka recoveryimage
```

### OrangeFox
```bash
source build/envsetup.sh
export FOX_BUILD_TYPE=Unofficial
export FOX_VERSION=R11.1
lunch twrp_fire-eng
mka recoveryimage
```

---

## Features
- ✅ A/B (Virtual A/B) support
- ✅ FBE decryption (HyperOS 2 / Android 15)
- ✅ Dynamic/Logical partitions
- ✅ MTK MT6768 kernel support
- ✅ Fastbootd support
- ✅ MTP / ADB support
- ✅ OrangeFox compatible

## Decryption Notes
- Device uses **FBE (File-Based Encryption)** with `aes-256-xts` + `aes-256-cts` policy v2
- Keymaster: `android.hardware.keymaster@4.0` (TrustKernel TEE)
- Metadata partition: `/dev/block/by-name/md_udc`
- Must have `vendor/bin/hw/android.hardware.keymaster@4.0-service.trustkernel` from stock dump

## Dump Source
Based on: [Stock ROM Dump - OS2.0.207.0.VMXMIXM](https://github.com/mkpromvp/Stock-rom-dumber/tree/dump-redmi-fire-os2.0.207.0.vmxmixm)

---
*AKRO-UNOFFICIAL | V3*
