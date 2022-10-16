#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),TECNO-KH6)
LOCAL_PATH := device/${tecno}/${TECNO-KH6}
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
