LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_CFLAGS := -fvisibility=hidden
LOCAL_MODULE    := andprof
LOCAL_SRC_FILES := gnu_mcount.S prof.c read_maps.c

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)

LOCAL_EXPORT_CFLAGS += -pg
LOCAL_EXPORT_CFLAGS += -fno-function-sections
LOCAL_EXPORT_CFLAGS += -fno-omit-frame-pointer

LOCAL_EXPORT_LDLIBS += -llog

include $(BUILD_STATIC_LIBRARY)
