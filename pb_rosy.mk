#
# Copyright 2021 The Android Open Source Project
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

# Release name (automatically taken from this file's suffix)
PRODUCT_RELEASE_NAME := $(lastword $(subst /, ,$(lastword $(subst _, ,$(firstword $(subst ., ,$(MAKEFILE_LIST)))))))

# Inherit from our custom product configuration
$(call inherit-product, vendor/pb/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/rosy/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := pb_$(PRODUCT_RELEASE_NAME)
PRODUCT_DEVICE := $(PRODUCT_RELEASE_NAME)
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Redmi 5
