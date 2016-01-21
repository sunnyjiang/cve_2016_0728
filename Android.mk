LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := cve_2016_0728.c\
		keyctl.c\
		keyutils.c
LOCAL_C_INCLUDE := /

LOCAL_MODULE := cve_2016_0728
LOCAL_MODULE_TAGS := optional
LOCAL_LDLIBS := -llog
LOCAL_CFLAGS := -pie -fPIE
LOCAL_LDFLAGS += -pie -fPIE

include $(BUILD_STATIC_EXECUTABLE)

include $(BUILD_EXECUTABLE)

include $(call all-makefiles-under,$(LOCAL_PATH))
