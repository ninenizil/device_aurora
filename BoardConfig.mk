USE_CAMERA_STUB := false
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := default
BOARD_CAMERA_LIBRARIES := liboemcamera \
	libcamera
	BOARD_USE_CAF_LIBCAMERA := true
#	BOARD_CAMERA_USE_GETBUFFERINFO := true




TARGET_SPECIFIC_HEADER_PATH += device/zte/aurora/include

TARGET_PROVIDES_INIT_RC := true

# Board
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := aurora
TARGET_NO_RADIOIMAGE := true

TARGET_BOARD_PLATFORM := msm8960
TARGET_BOARD_PLATFORM_GPU := qcom-adreno225
TARGET_BOARD_PLATFORM_FPU := neon

TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_CPU_SMP := true
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

ARCH_ARM_HAVE_TLS_REGISTER := true


# QCOM
BOARD_USES_QCOM_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
BOARD_USE_QCOM_PMEM := true
TARGET_USES_QCOM_LPA := true

COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK -DQCOM_ROTATOR_KERNEL_FORMATS
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB -DQCOM_ICS_COMPAT
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60

BOARD_NEEDS_MEMORYHEAPPMEM := true
BOARD_CAMERA_USE_GETBUFFERINFO := true
TARGET_GRALLOC_USES_ASHMEM := true

# Display/Graphics
BOARD_EGL_CFG := device/zte/aurora/prebuilt/lib/egl/egl.cfg
BOARD_USES_ADRENO_200 := true
BOARD_USES_GENLOCK := true
USE_OPENGL_RENDERER := true
TARGET_USES_ION := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_SF_BYPASS := true
TARGET_USES_OVERLAY := true
TARGET_HARDWARE_3D := true
TARGET_QCOM_HDMI_OUT := true


#hdmi
#TARGET_QCOM_HDMI_OUT := true


#Browser
TARGET_FORCE_CPU_UPLOAD := true
#DYNAMIC_SHARED_LIBV8SO := true
WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8
WITH_DEXPREOPT := true

BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
#BOARD_CAMERA_USE_GETBUFFERINFO := true

# Audio
#BOARD_USES_QCOM_LPA := true
#BOARD_USES_QCOM_AUDIO_V2 := true
#TARGET_PROVIDES_LIBAUDIO := true

#BOARD_PREBUILT_LIBAUDIO := false
#BOARD_USES_QCOM_AUDIO_VOIPMUTE := true
#BOARD_USES_QCOM_AUDIO_RESETALL := true

BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_QCOM_AUDIO_RESETALL := true

# Wifi
# HOSTAPD-derived wifi driver
BOARD_HAS_QCOM_WLAN := true
#BOARD_WLAN_DEVICE := qcwcn
#BOARD_SOFTAP_DEVICE := qcwcn 
#WPA_SUPPLICANT_VERSION := VER_0_8_X
#BOARD_WPA_SUPPLICANT_DRIVER := NL80211
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_MODULE_NAME :=  "ks8851"
WIFI_DRIVER_MODULE_PATH :=  "/system/lib/modules/ks8851.ko"
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
###


# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

#RIL
#BOARD_USES_HC_RADIO := true

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=31 loglevel=7 kgsl.mmutype=gpummu
BOARD_KERNEL_BASE := 0x80200000
BOARD_FORCE_RAMDISK_ADDRESS := 0x81500000
BOARD_KERNEL_PAGESIZE := 2048

TARGET_PREBUILT_KERNEL := device/zte/aurora/kernel
TARGET_KERNEL_SOURCE := kernel/zte/aurora
TARGET_KERNEL_CONFIG := msm8960-hayes_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3

# Parttions/filesystem
# Get values by examining /proc/partitions on a running device & multiply by 1024
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 480018432
BOARD_CACHEIMAGE_PARTITION_SIZE := 318767104
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2793406464
BOARD_PERSISTIMAGE_PARTITION_SIZE := 25165824
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_USES_MMCUTILS := true
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/vold/179:33

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_HANDLES_MOUNT := true
BOARD_HAS_DOWNLOAD_MODE := true
TARGET_PREBUILT_RECOVERY_KERNEL := device/zte/aurora/recovery/kernel
BOARD_CUSTOM_GRAPHICS := ../../../device/zte/aurora/recovery/graphics.c

# Insecure boot
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += persist.service.adb.enable=1
