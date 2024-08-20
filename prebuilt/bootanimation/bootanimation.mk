# Bootanimation
ifeq ($(TARGET_BOOT_ANIMATION_RES),720)
     PRODUCT_COPY_FILES += vendor/addons/prebuilt/bootanimation/bootanimation_720.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
else ifeq ($(TARGET_BOOT_ANIMATION_RES),1080)
     PRODUCT_COPY_FILES += vendor/addons/prebuilt/bootanimation/bootanimation_1080.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
else ifeq ($(TARGET_BOOT_ANIMATION_RES),1440)
     PRODUCT_COPY_FILES += vendor/addons/prebuilt/bootanimation/bootanimation_1440.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
else ifeq ($(TARGET_PIXEL_BOOT_ANIMATION_RES),1080)
     PRODUCT_COPY_FILES += vendor/addons/prebuilt/bootanimation/bootanimation_1080.zip:$(TARGET_COPY_OUT_SYSTEM)/media/bootanimation.zip
else ifeq ($(TARGET_PIXEL_BOOT_ANIMATION_RES),1440)
     PRODUCT_COPY_FILES += vendor/addons/prebuilt/bootanimation/bootanimation_1440.zip:$(TARGET_COPY_OUT_SYSTEM)/media/bootanimation.zip
else
    ifeq ($(TARGET_BOOT_ANIMATION_RES),)
        $(warning "TARGET_BOOT_ANIMATION_RES is undefined, assuming 1080p")
    else
        $(warning "Current bootanimation res is not supported, forcing 1080p")
    endif
    PRODUCT_COPY_FILES += vendor/addons/prebuilt/bootanimation/bootanimation_1080.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
endif

PRODUCT_COPY_FILES += \
    vendor/addons/prebuilt/bootanimation/bootanimation_cm.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation_cm.zip \
    vendor/addons/prebuilt/bootanimation/bootanimation_cyberpunk.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation_cyberpunk.zip \
    vendor/addons/prebuilt/bootanimation/bootanimation_valorant.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation_valorant.zip \
    vendor/addons/prebuilt/bootanimation/bootanimation_rr.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation_rr.zip \
    vendor/addons/prebuilt/bootanimation/bootanimation_google.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation_google.zip \
    vendor/addons/prebuilt/bootanimation/bootanimation_google_monet.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation_google_monet.zip
