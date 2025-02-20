# Boot animation
TARGET_SCREEN_HEIGHT := 2280
TARGET_SCREEN_WIDTH := 1080

# Inherit some common StatiX stuff.
$(call inherit-product, vendor/scorpion/config/common.mk)
$(call inherit-product, vendor/scorpion/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_oriole.mk)
$(call inherit-product, device/google/raviole/device-scorpion.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := scorpion_raven
PRODUCT_MODEL := Pixel 6
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=raven \
    PRIVATE_BUILD_DESC="raven-user 12 SQ1D.211205.016.A1 7888514 release-keys"

BUILD_FINGERPRINT := google/raven/raven:12/SQ1D.211205.016.A1/7888514:user/release-keys

$(call inherit-product, vendor/google/raven/raven-vendor.mk)
$(call inherit-product, vendor/gapps/common/common-vendor.mk)
