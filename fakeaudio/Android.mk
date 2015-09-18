LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= fakeaudio.cpp

LOCAL_MODULE := libfakeaudio
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_C_INCLUDES += \
    frameworks/native/include/

include $(BUILD_SHARED_LIBRARY)
