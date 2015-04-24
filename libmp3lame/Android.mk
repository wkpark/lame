LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LIBMP3LAME_DIR := external/lame/libmp3lame

LOCAL_C_INCLUDES := \
	external/lame/android \
	external/lame/include \
	external/lame/mpglib

LOCAL_CFLAGS := \
	-U_FORTIFY_SOURCE \
	-DANDROID_SDK_VERSION=$(PLATFORM_SDK_VERSION) \
	-DHAVE_CONFIG_H -DPIC

LOCAL_MODULE    := libmp3lame
LOCAL_SRC_FILES := \
	VbrTag.c \
	bitstream.c \
	encoder.c \
	fft.c \
	gain_analysis.c \
	id3tag.c \
	lame.c \
	mpglib_interface.c \
	newmdct.c \
	presets.c \
	psymodel.c \
	quantize.c \
	quantize_pvt.c \
	reservoir.c \
	set_get.c \
	tables.c \
	takehiro.c \
	util.c \
	vbrquantize.c \
	version.c

include $(BUILD_SHARED_LIBRARY)
