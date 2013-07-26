ifneq ($(strip $(USE_DEVICE_SPECIFIC_CAMERA)),true)
ifneq ($(TARGET_PROVIDES_CAMERA_HAL),true)
ifeq ($(TARGET_BOARD_PLATFORM),msm8960)
MM_V4L2_DRIVER_LIST += msm8960
MM_V4L2_DRIVER_LIST += msm8974
MM_V4L2_DRIVER_LIST += msm8226

ifeq ($(call is-board-platform-in-list,$(MM_V4L2_DRIVER_LIST)),true)
  ifneq ($(USE_CAMERA_STUB),true)
    ifneq ($(BUILD_TINY_ANDROID),true)
      include $(call all-subdir-makefiles)
    endif
  endif
endif
endif
endif # TARGET_PROVIDES_CAMERA_HAL
