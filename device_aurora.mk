ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/zte/aurora/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif
PRODUCT_COPY_FILES += \
$(LOCAL_KERNEL):kernel \

PRODUCT_BOARD := aurora
DEVICE_PACKAGE_OVERLAYS := device/zte/aurora/overlay
PRODUCT_TAGS += dalvik.gc.type-precise

# device uses high-density artwork where available
PRODUCT_LOCALES += hdpi

PRODUCT_AAPT_CONFIG := normal hdpi

$(call inherit-product, device/zte/aurora/prebuilt/lib/modules/modules.mk)

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio_policy.msm8960 \
    audio.primary.msm8960 \
    libaudioutils

PRODUCT_PACKAGES += \
AccountAndSyncSettings \
AlarmProvider \
Androidian \
applypatch \
ast-mm-vdec-omx-test \
Bluetooth \
brcm_patchram_plus \
busybox \
Calculator \
Calendar \
CalendarProvider \
Camera \
CertInstaller \
CMParts \
CMScreenshot \
CMStats \
CMWallpapers \
com.tmobile.themes \
copybit.msm8960 \
Cyanbread \
DeskClock \
DrmProvider \
Email \
Gallery2 \
gps.default \
gralloc.msm8960 \
hciattach \
hciconfig \
hcitool \
hdmid \
hwcomposer.msm8960 \
IM \
LatinIME \
Launcher2 \
#libdivxdrmdecrypt \
libinvensense_hal \
liblasic \
liblinenoise \
libmemalloc \
#libmm-omxcore \
#libOmxCore \
#libOmxVdec \
#libOmxVenc \
libOmxVidEnc \
librs_jni \
#libstagefrighthw \
libwpa_client \
lights.msm8960 \
LiveWallpapers \
LiveWallpapersPicker \
make_ext4fs \
Mms \
mm-vdec-omx-property-mgr \
mm-vdec-omx-test \
mm-venc-omx-test \
mm-video-driver-test \
mm-video-encdrv-test \
Music \
MusicFX \
Phone \
Protips \
Provision \
QuickSearchBox \
Settings \
setup_fs \
Superuser \
Sync \
SyncProvider \
SystemUI \
ThemeChooser \
ThemeManager \
Updater \
VideoEditor \
VisualizationWallpapers \
VoiceDialer \

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
frameworks/base/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
frameworks/base/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
frameworks/base/data/etc/com.tmobile.software.themes.xml:/system/etc/permissions/com.tmobile.software.themes.xml \
packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \

# Pre-Built Files
PRODUCT_COPY_FILES += \
device/zte/aurora/prebuilt/app/Sdlog.apk:system/app/Sdlog.apk \
device/zte/aurora/prebuilt/app/Sdlog.odex:system/app/Sdlog.odex \
device/zte/aurora/prebuilt/bin/bluetoothd:system/bin/bluetoothd \
device/zte/aurora/prebuilt/bin/bt_ssp_debug_mode.sh:system/bin/bt_ssp_debug_mode.sh \
device/zte/aurora/prebuilt/bin/bt_testmode.sh:system/bin/bt_testmode.sh \
device/zte/aurora/prebuilt/bin/bt_testmode_new.sh:system/bin/bt_testmode_new.sh \
device/zte/aurora/prebuilt/bin/btnvtool:system/bin/btnvtool \
device/zte/aurora/prebuilt/bin/hciattach:system/bin/hciattach \
device/zte/aurora/prebuilt/bin/hci_qcomm_init:system/bin/hci_qcomm_init \
device/zte/aurora/prebuilt/bin/hciconfig:system/bin/hciconfig \
device/zte/aurora/prebuilt/bin/hcitool:system/bin/hcitool \
device/zte/aurora/prebuilt/bin/init.btprop.sh:system/bin/init.btprop.sh \
device/zte/aurora/prebuilt/bin/mm-qcamera-daemon:system/bin/mm-qcamera-daemon \
device/zte/aurora/prebuilt/bin/mm-qcamera-test:system/bin/mm-qcamera-test \
device/zte/aurora/prebuilt/bin/v4l2-qcamera-app:system/bin/v4l2-qcamera-app \
device/zte/aurora/prebuilt/bin/hdmid:system/bin/hdmid \
device/zte/aurora/prebuilt/bin/wiperiface_v02:system/bin/wiperiface_v02 \
device/zte/aurora/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml \
device/zte/aurora/prebuilt/etc/bluetooth/audio.conf:system/etc/bluetooth/audio.conf \
device/zte/aurora/prebuilt/etc/bluetooth/auto_pairing.conf:system/etc/bluetooth/auto_pairing.conf \
device/zte/aurora/prebuilt/etc/bluetooth/blacklist.conf:system/etc/bluetooth/blacklist.conf \
device/zte/aurora/prebuilt/etc/bluetooth/input.conf:system/etc/bluetooth/input.conf \
device/zte/aurora/prebuilt/etc/bluetooth/main.conf:system/etc/bluetooth/main.conf \
device/zte/aurora/prebuilt/etc/bluetooth/network.conf:system/etc/bluetooth/network.conf \
device/zte/aurora/prebuilt/etc/firmware/a225p5_pm4.fw:system/etc/firmware/a225p5_pm4.fw \
device/zte/aurora/prebuilt/etc/firmware/a225_pfp.fw:system/etc/firmware/a225_pfp.fw \
device/zte/aurora/prebuilt/etc/firmware/a225_pm4.fw:system/etc/firmware/a225_pm4.fw \
device/zte/aurora/prebuilt/etc/firmware/a300_pfp.fw:system/etc/firmware/a300_pfp.fw \
device/zte/aurora/prebuilt/etc/firmware/a300_pm4.fw:system/etc/firmware/a300_pm4.fw \
device/zte/aurora/prebuilt/etc/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
device/zte/aurora/prebuilt/etc/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw \
device/zte/aurora/prebuilt/etc/gps.conf:system/etc/gps.conf \
device/zte/aurora/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml \
device/zte/aurora/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
device/zte/aurora/prebuilt/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
device/zte/aurora/prebuilt/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
device/zte/aurora/prebuilt/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
device/zte/aurora/prebuilt/etc/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh \
device/zte/aurora/prebuilt/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
device/zte/aurora/prebuilt/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
device/zte/aurora/prebuilt/etc/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
device/zte/aurora/prebuilt/etc/qcom/softap/hostapd_default.conf:system/etc/qcom/softap/hostapd_default.conf \
device/zte/aurora/prebuilt/etc/init.wlanprop.sh:system/etc/init.wlanprop.sh \
device/zte/aurora/prebuilt/etc/wiperconfig.xml:system/etc/wiperconfig.xml \
device/zte/aurora/prebuilt/etc/firmware/wlan/prima/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
device/zte/aurora/prebuilt/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
device/zte/aurora/prebuilt/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
device/zte/aurora/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
device/zte/aurora/prebuilt/etc/wifi/p2p_supplicant.conf:system/etc/wifi/p2p_supplicant.conf \
device/zte/aurora/prebuilt/hostapd/hostapd.accept:system/hostapd/hostapd.accept \
device/zte/aurora/prebuilt/hostapd/hostapd.conf:system/hostapd/hostapd.conf \
device/zte/aurora/prebuilt/hostapd/hostapd.deny:system/hostapd/hostapd.deny \
device/zte/aurora/prebuilt/lib/libacdbloader.so:obj/lib/libacdbloader.so \
device/zte/aurora/prebuilt/lib/libacdbloader.so:system/lib/libacdbloader.so \
device/zte/aurora/prebuilt/lib/libalsautils.so:system/lib/libalsautils.so \
device/zte/aurora/prebuilt/lib/libaudcal.so:system/lib/libaudcal.so \
device/zte/aurora/prebuilt/lib/hw/alsa.msm8960.so:system/lib/hw/alsa.msm8960.so \
device/zte/aurora/prebuilt/lib/libaudioalsa.so:obj/lib/libaudioalsa.so \
device/zte/aurora/prebuilt/lib/libalsa-intf.so:obj/lib/libalsa-intf.so \
device/zte/aurora/prebuilt/lib/libaudioalsa.so:obj/lib/libaudioalsa.so \
device/zte/aurora/prebuilt/lib/libaudioparameter.so:obj/lib/libaudioparameter.so \
device/zte/aurora/prebuilt/lib/libbluedroid.so:system/lib/libbluedroid.so \
device/zte/aurora/prebuilt/lib/libbluetooth.so:system/lib/libbluetooth.so \
device/zte/aurora/prebuilt/lib/libbluetoothd.so:system/lib/libbluetoothd.so \
device/zte/aurora/prebuilt/lib/libbtio.so:system/lib/libbtio.so \
device/zte/aurora/prebuilt/lib/liboemcamera.so:obj/lib/liboemcamera.so \
device/zte/aurora/prebuilt/lib/liboemcamera.so:system/lib/liboemcamera.so \
device/zte/aurora/prebuilt/lib/hw/camera.msm8960.so:system/lib/hw/camera.msm8960.so \
device/zte/aurora/prebuilt/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
device/zte/aurora/prebuilt/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
device/zte/aurora/prebuilt/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
device/zte/aurora/prebuilt/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
device/zte/aurora/prebuilt/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
device/zte/aurora/prebuilt/lib/egl/libGLESv2S3D_adreno200.so:system/lib/egl/libGLESv2S3D_adreno200.so \
device/zte/aurora/prebuilt/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
device/zte/aurora/prebuilt/lib/libC2D2.so:system/lib/libC2D2.so \
device/zte/aurora/prebuilt/lib/libgsl.so:system/lib/libgsl.so \
device/zte/aurora/prebuilt/lib/libllvm-a3xx.so:system/lib/libllvm-a3xx.so \
device/zte/aurora/prebuilt/lib/libOpenCL.so:system/lib/libOpenCL.so \
device/zte/aurora/prebuilt/lib/libOpenVG.so:system/lib/libOpenVG.so \
device/zte/aurora/prebuilt/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so \
device/zte/aurora/prebuilt/lib/libsc-a3xx.so:system/lib/libsc-a3xx.so \
device/zte/aurora/prebuilt/lib/libgps.so:system/lib/libgps.so \
device/zte/aurora/prebuilt/lib/libloc_api_v02.so:system/lib/libloc_api_v02.so \
device/zte/aurora/prebuilt/lib/libloc_ext.so:system/lib/libloc_ext.so \
device/zte/aurora/prebuilt/lib/libdivxdrmdecrypt.so:system/lib/libdivxdrmdecrypt.so \
device/zte/aurora/prebuilt/lib/libmm-omxcore.so:system/lib/libmm-omxcore.so \
device/zte/aurora/prebuilt/lib/libOmxAacEnc.so:system/lib/libOmxAacEnc.so \
device/zte/aurora/prebuilt/lib/libOmxAmrEnc.so:system/lib/libOmxAmrEnc.so \
device/zte/aurora/prebuilt/lib/libOmxCore.so:system/lib/libOmxCore.so \
device/zte/aurora/prebuilt/lib/libOmxEvrcEnc.so:system/lib/libOmxEvrcEnc.so \
device/zte/aurora/prebuilt/lib/libOmxQcelp13Enc.so:system/lib/libOmxQcelp13Enc.so \
device/zte/aurora/prebuilt/lib/libOmxVdec.so:system/lib/libOmxVdec.so \
device/zte/aurora/prebuilt/lib/libOmxVenc.so:system/lib/libOmxVenc.so \
device/zte/aurora/prebuilt/lib/libstagefrighthw.so:system/lib/libstagefrighthw.so \
device/zte/aurora/prebuilt/lib/libQWiFiSoftApCfg.so:system/lib/libQWiFiSoftApCfg.so \
device/zte/aurora/prebuilt/lib/libsensor1.so:system/lib/libsensor1.so \
device/zte/aurora/prebuilt/lib/hw/sensors.goldfish.so:system/lib/hw/sensors.goldfish.so \
device/zte/aurora/prebuilt/lib/hw/sensors.msm8960.so:system/lib/hw/sensors.msm8960.so \
device/zte/aurora/prebuilt/lib/libwiperjni_v02.so:system/lib/libwiperjni_v02.so \
device/zte/aurora/prebuilt/media/bootanimation.zip:system/media/bootanimation.zip \
device/zte/aurora/prebuilt/qcom/softap/hostapd_default.conf:system/qcom/softap/hostapd_default.conf \
device/zte/aurora/prebuilt/usr/keychars/qwerty.kcm:system/usr/keychars/qwerty.kcm \
device/zte/aurora/prebuilt/usr/keychars/qwerty2.kcm:system/usr/keychars/qwerty2.kcm \
device/zte/aurora/prebuilt/usr/keylayout/atmel-touchscreen.kl:system/usr/keylayout/atmel-touchscreen.kl \
device/zte/aurora/prebuilt/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
device/zte/aurora/prebuilt/usr/keylayout/Fts-touchscreen.kl:system/usr/keylayout/Fts-touchscreen.kl \
device/zte/aurora/prebuilt/usr/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
device/zte/aurora/prebuilt/usr/keylayout/msm8960-snd-card_Button_Jack.kl:system/usr/keylayout/msm8960-snd-card_Button_Jack.kl \
device/zte/aurora/prebuilt/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
device/zte/aurora/prebuilt/usr/keylayout/syna-touchscreen.kl:system/usr/keylayout/syna-touchscreen.kl \
device/zte/aurora/prebuilt/usr/idc/syna-touchscreen.idc:system/usr/idc/syna-touchscreen.idc\
device/zte/aurora/root/init.rc:root/init.rc \
device/zte/aurora/root/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
device/zte/aurora/root/init.qcom.class_main.sh:root/init.qcom.class_main.sh \
device/zte/aurora/root/init.qcom.rc:root/init.qcom.rc \
device/zte/aurora/root/init.qcom.sh:root/init.qcom.sh \
device/zte/aurora/root/init.qcom.usb.rc:root/init.qcom.usb.rc \
device/zte/aurora/root/init.qcom.usb.sh:root/init.qcom.usb.sh \
device/zte/aurora/root/ueventd.rc:root/ueventd.qcom.rc \
device/zte/aurora/root/logo.bmp:root/logo.bmp \
device/zte/aurora/prebuilt/lib/libaudioalsa.so:obj/lib/libaudioalsa.so \
device/zte/aurora/prebuilt/lib/libaudioalsa.so:system/lib/libaudioalsa.so \
device/zte/aurora/root/sbin/usbconfig:root/sbin/usbconfig \

## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/cdma.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/common/gps/gps_us_supl.mk)

-include vendor/cm/config/common_versions.mk
