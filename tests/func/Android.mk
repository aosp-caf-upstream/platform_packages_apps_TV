LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := tests


# Include all test java files.
LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_PACKAGE_NAME := TVFuncTests

LOCAL_STATIC_JAVA_LIBRARIES := \
    android-support-test \
    tv-test-common \
    ub-uiautomator \

LOCAL_JAVA_LIBRARIES := legacy-android-test

LOCAL_INSTRUMENTATION_FOR := LiveTv

LOCAL_SDK_VERSION := current
LOCAL_MIN_SDK_VERSION := 23  # M

include $(BUILD_PACKAGE)
