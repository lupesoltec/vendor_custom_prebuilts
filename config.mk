# Copyright (C) 2018 The LineageOS Project
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

VENDOR_PATH := vendor/custom/prebuilts

TARGET_BUILD_MIUI_CAMERA ?= true
ifeq ($(strip $(TARGET_BUILD_MIUI_CAMERA)),true)
    # Inherit from MiuiCamera
    $(call inherit-product, vendor/custom/prebuilts/MiuiCamera/config.mk)
endif

TARGET_BUILD_CAMERAGO ?= true
ifeq ($(strip $(TARGET_BUILD_CAMERAGO)),true)
PRODUCT_PACKAGES += \
    CameraGo
endif

TARGET_BUILD_GRAPHENEOS_CAMERA ?= true
ifeq ($(strip $(TARGET_BUILD_GRAPHENEOS_CAMERA)),true)
PRODUCT_PACKAGES += \
    GrapheneCamera
endif
