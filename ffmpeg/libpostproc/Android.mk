LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

include $(LOCAL_PATH)/../av.mk

LOCAL_SRC_FILES := $(FFFILES)

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/..

LOCAL_CFLAGS += $(FFCFLAGS)

LOCAL_SHARED_LIBRARIES := $(FFLIBS)

LOCAL_MODULE := libnampostproc

LOCAL_ARM_MODE := arm 

LOCAL_PRELINK_MODULE := false

LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
