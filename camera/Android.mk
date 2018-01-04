LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_C_INCLUDES := \
    framework/native/include \
    frameworks/native/libs/nativewindow/include/ \
    frameworks/native/libs/arect/include \
    frameworks/native/libs/nativebase/include/ \
    frameworks/native/include/media/hardware \
    system/media/camera/include \
    
LOCAL_SRC_FILES := \
    CameraWrapper.cpp

LOCAL_SHARED_LIBRARIES := \
    libhardware \
    libhidltransport \
    liblog \
    libcamera_client \
    libutils \
    libcutils \
    libgui \
    android.hidl.token@1.0-utils

LOCAL_STATIC_LIBRARIES := \
    libarect

LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_MODULE := camera.$(TARGET_BOARD_PLATFORM)
LOCAL_MODULE_TAGS := optional
LOCAL_HEADER_LIBRARIES := libnativebase_headers

include $(BUILD_SHARED_LIBRARY)
