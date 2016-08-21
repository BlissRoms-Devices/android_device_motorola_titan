#
# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# inherit from common msm8226-common
-include device/motorola/msm8226-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/titan

# Vendor Unification Init
TARGET_INIT_VENDOR_LIB := libinit_titan
TARGET_RECOVERY_DEVICE_MODULES := libinit_titan
TARGET_UNIFIED_DEVICE := true

# Assert
TARGET_OTA_ASSERT_DEVICE := titan,titan_umts,titan_udstv,titan_umtsds,titan_retaildsds,XT1068,XT1064,XT1063,XT1069

# Board
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Kernel
TARGET_KERNEL_CONFIG := titan_defconfig

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 10444800
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10526720
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1157627904
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5912772608

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# inherit from the proprietary version
-include vendor/motorola/titan/BoardConfigVendor.mk

# Blissful building options
BLISS_BUILD_BLOCK := 1
BLISSIFY := true
BLISS_O3 := true
BLISS_GRAPHITE := true
#BLISS_STRICT := true
BLISS_KRAIT := true
BLISS_PIPE := true
FLOOP_NEST_OPTIMIZE := true
ENABLE_GCCONLY := true
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true
FAST_MATH := true
ENABLE_MODULAR_O3 := true
ENABLE_LTO := true
LINK_TIME_OPTIMIZATIONS := true
TARGET_USE_ION_COMPAT := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_TC_ROM := 5.3-sm
TARGET_TC_KERNEL := 5.3-sm
TARGET_GCC_VERSION_EXP := $(TARGET_TC_ROM)
TARGET_KERNEL_CUSTOM_TOOLCHAIN := $(TARGET_TC_KERNEL)
TARGET_ENABLE_UKM := true
# WITH_LZMA_OTA := true
