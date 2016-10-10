LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := tolua++_static

LOCAL_MODULE_FILENAME := libtolua++

LOCAL_SRC_FILES := \
../../src/lib/tolua_event.c \
../../src/lib/tolua_is.c \
../../src/lib/tolua_map.c \
../../src/lib/tolua_push.c \
../../src/lib/tolua_to.c

LOCAL_C_INCLUDES := \
$(LOCAL_PATH)/../../include \
$(LOCAL_PATH)/../../src/lib

LOCAL_CPPFLAGS += -fexceptions

LOCAL_STATIC_LIBRARIES := luajit_static

include $(BUILD_STATIC_LIBRARY)

$(call import-module,luajit)