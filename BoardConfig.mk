USE_CAMERA_STUB := true

DEVICE_FOLDER := device/meizu/arale

# inherit from the proprietary version
-include vendor/meizu/arale/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := arale
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_LDPRELOAD := libxlog.so:libfakeaudio.so

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 4096

# BT
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_FOLDER)/bluetooth

# TODO add mtkimg as an external host binary instead of using an outside-built version
BOARD_CUSTOM_MKBOOTIMG := /media/antoine/SlowStore/dev/mx4-sailport/mtkimg/build/mtkimg
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_FOLDER)/boot.mk

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2164260864
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12613844992
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/meizu/arale/kernel

BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USES_MTK_AUDIO := true

#BOARD_HAS_MTK_HARDWARE := true
#COMMON_GLOBAL_CFLAGS += -DMTK_HARDWARE
#COMMON_GLOBAL_CPPFLAGS += -DMTK_HARDWARE
USE_OPENGL_RENDERER := true
COMMON_GLOBAL_CPPFLAGS += -DUSE_OPENGL_RENDERER

WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_WLAN_DEVICE := mediatek
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM:="/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_P2P:=P2P

# telephony
#BOARD_RIL_CLASS := ../../../$(DEVICE_FOLDER)/ril

BOARD_SEPOLICY_DIRS += $(DEVICE_FOLDER)/sepolicy

BOARD_SEPOLICY_UNION += \
			file_contexts \
			file.te \
			property_contexts \
			property.te \
			service_contexts \
			service.te \
			device.te \
			mtkrild.te \
			gsm0710muxd.te \
			ccci_mdinit.te \
			emdlogger.te \
			immvibed.te \
			netd.te	\
			nvram_agent_binder.te \
			mediaserver.te \
			vold.te \
			mnld.te \
			ccci_fsd.te \
			em_svr.te \
			audiocmdservice_atci.te \
			atci_service.te \
			aal.te \
			MtkCodecService.te \
			sn.te \
			ppl_agent.te \
			thermal.te \
			thermald.te \
			guiext-server.te \
			batterywarning.te \
			wifi2agps.te \
			matv.te \
			netdiag.te \
			mobile_log_d.te \
			mtk_6620_launcher.te \
			autokd.te \
			mtk_agpsd.te \
			install_recovery.te \
			radio.te
