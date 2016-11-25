#
# Copyright (C) 2011 The Android Open-Source Project
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

LOCAL_PATH := device/xiaomi/aries

TARGET_BOOTLOADER_NAME       := aries
TARGET_BOARD_INFO_FILE       := $(LOCAL_PATH)/board-info.txt

TARGET_RELEASETOOLS_EXTENSIONS := $(LOCAL_PATH)

# Audio
BOARD_HAVE_AUDIENCE_ES310 := true
BOARD_HAVE_NEW_QCOM_CSDCLIENT   := true
BOARD_HAVE_CSD_FAST_CALL_SWITCH := true

BOARD_USES_ALSA_AUDIO               := true
TARGET_USES_QCOM_MM_AUDIO           := true
TARGET_USES_QCOM_COMPRESSED_AUDIO   := true
BOARD_USES_LEGACY_ALSA_AUDIO        := true
QCOM_ANC_HEADSET_ENABLED            := true
QCOM_FLUENCE_ENABLED                := false
TUNNEL_MODE_SUPPORTS_AMRWB          := true
USE_TUNNEL_MODE                     := true
QCOM_TUNNEL_LPA_ENABLED             := true
QCOM_PROXY_DEVICE_ENABLED           := true
QCOM_ACDB_ENABLED                   := true
QCOM_AUDIO_FORMAT_ENABLED           := true
QCOM_CSDCLIENT_ENABLED              := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE  := true
AUDIO_FEATURE_ENABLED_AUXPCM_BT     := false
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS  := true
QCOM_OUTPUT_FLAGS_ENABLED           := true
QCOM_USBAUDIO_ENABLED               := true
QCOM_FLUENCE_ENABLED                := true
QCOM_MULTI_VOICE_SESSION_ENABLED    := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

BOARD_HAVE_BLUETOOTH       := true
BOARD_HAVE_BLUETOOTH_QCOM  := true
BLUETOOTH_HCI_USE_MCT      := true

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true

# CM Hardware
BOARD_HARDWARE_CLASS := $(LOCAL_PATH)/cmhw/

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 31457280          # 32MB
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640      # 16MB
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824      # 1073MB
BOARD_USERDATAIMAGE_PARTITION_SIZE := 3758096384    # 3.5GB
BOARD_PERSISTIMAGE_PARTITION_SIZE := 8388608        # 8MB
BOARD_CACHEIMAGE_PARTITION_SIZE := 402653184        # 384MB
BOARD_FLASH_BLOCK_SIZE := 131072                    # (BOARD_KERNEL_PAGESIZE * 64)

TARGET_NO_RADIOIMAGE := true
TARGET_NO_BOOTLOADER := true

QCOM_BOARD_PLATFORMS         := msm8960
TARGET_BOARD_PLATFORM        := msm8960
TARGET_BOOTLOADER_BOARD_NAME := MSM8960

# Flags
TARGET_GLOBAL_CFLAGS   += -DQCOM_HARDWARE
TARGET_GLOBAL_CPPFLAGS += -DQCOM_HARDWARE
COMMON_GLOBAL_CFLAGS   += -D__ARM_USE_PLD -D__ARM_CACHE_LINE_SIZE=64

# Vendor Init
TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_msm
TARGET_LIBINIT_DEFINES_FILE := $(LOCAL_PATH)/init/init_aries.c

# Architecture
TARGET_CPU_ABI             := armeabi-v7a
TARGET_CPU_ABI2            := armeabi
TARGET_CPU_SMP             := true
TARGET_CPU_VARIANT         := krait
TARGET_ARCH                := arm
TARGET_ARCH_VARIANT        := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
BOARD_USES_QCOM_HARDWARE   := true

# Krait optimizations
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET            := true
TARGET_KRAIT_BIONIC_PLDOFFS         := 10
TARGET_KRAIT_BIONIC_PLDTHRESH       := 10
TARGET_KRAIT_BIONIC_BBTHRESH        := 64
TARGET_KRAIT_BIONIC_PLDSIZE         := 64

# boot image
BOARD_KERNEL_BASE     := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET  := 0x02000000
BOARD_MKBOOTIMG_ARGS  := --ramdisk_offset 0x02000000
BOARD_KERNEL_CMDLINE  := console=null androidboot.hardware=qcom ehci-hcd.park=3 maxcpus=2 androidboot.bootdevice=msm_sdcc.1 androidboot.selinux=permissive
TARGET_PREBUILT_KERNEL :=

# Wifi
BOARD_HAS_QCOM_WLAN              := true
BOARD_WLAN_DEVICE                := qcwcn
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
TARGET_USES_WCNSS_CTRL           := true
TARGET_USES_QCOM_WCNSS_QMI       := true
TARGET_WCNSS_MAC_PREFIX          := e8bba8
WIFI_DRIVER_FW_PATH_STA          := "sta"
WIFI_DRIVER_FW_PATH_AP           := "ap"

# FM
COMMON_GLOBAL_CFLAGS     += -DQCOM_FM_ENABLED
QCOM_FM_ENABLED          := true
BOARD_HAVE_QCOM_FM       := true
AUDIO_FEATURE_ENABLED_FM := true

# QCOM BSP
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP
TARGET_USES_QCOM_BSP := true

# QCOM enhanced A/V
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# Display
TARGET_USES_ION                 := true
USE_OPENGL_RENDERER             := true
TARGET_USES_C2D_COMPOSITION     := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# GPU
OVERRIDE_RS_DRIVER              := libRSDriver_adreno.so
HAVE_ADRENO_SOURCE              := false
BOARD_EGL_CFG                   := $(LOCAL_PATH)/configs/egl.cfg

# GPS
#The below will be needed if we ever want to build GPS HAL from source
#TARGET_PROVIDES_GPS_LOC_API := true
#BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)
#TARGET_NO_RPC := true

# Webkit
ENABLE_WEBGL            := true
TARGET_FORCE_CPU_UPLOAD := true

# Recovery
TARGET_RECOVERY_FSTAB            := $(LOCAL_PATH)/rootdir/root/fstab.qcom

# Lights HAL
TARGET_PROVIDES_LIBLIGHT := true

# SELinux
-include device/qcom/sepolicy/sepolicy.mk

BOARD_SEPOLICY_DIRS += \
    device/xiaomi/aries/sepolicy

BOARD_SEPOLICY_UNION += \
       atfwd.te \
       btnvtool.te \
       camera.te \
       file.te \
       file_contexts \
       init.te \
       mdm_helper.te \
       mediaserver.te \
       sensors.te \
       system_server.te \
       thermal-engine.te \
       ueventd.te \
       untrusted_app.te

BOARD_USES_SECURE_SERVICES := true

SUPERUSER_EMBEDDED := true

PRODUCT_BOOT_JARS += \
    qcom.fmradio \
    qcmediaplayer \
    org.codeaurora.Performance \
    tcmiface

# Include an expanded selection of fonts
EXTENDED_FONT_FOOTPRINT := true

# legacy support flags
TARGET_USES_LOGD := false

MALLOC_IMPL := dlmalloc

# Enable dex-preoptimization to speed up first boot sequence
ifeq ($(HOST_OS),linux)
  ifeq ($(call match-word-in-list,$(TARGET_BUILD_VARIANT),user),true)
    ifeq ($(WITH_DEXPREOPT),)
      WITH_DEXPREOPT := true
    endif
  endif
endif

# Try to build the kernel
TARGET_KERNEL_SOURCE := kernel/xiaomi/aries
TARGET_KERNEL_CONFIG := aries-perf_defconfig

# Use CM PowerHAL by default
TARGET_POWERHAL_VARIANT := cm

-include vendor/xiaomi/aries/BoardConfigVendor.mk
