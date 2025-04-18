# MCU
# MCU = atmega32u4

# Core features
LTO_ENABLE = yes            # Link Time Optimization enabled
BOOTMAGIC_ENABLE = no       # Enable Bootmagic Lite
MOUSEKEY_ENABLE = no        # Mouse keys
EXTRAKEY_ENABLE = yes       # Audio control and System control
CONSOLE_ENABLE = no         # Console for debug
COMMAND_ENABLE = no         # Commands for debug and configuration
NKRO_ENABLE = no            # N-Key Rollover
BACKLIGHT_ENABLE = no       # Enable keyboard backlight functionality
AUDIO_ENABLE = no           # Audio output
RGBLIGHT_ENABLE = no        # Enable WS2812 RGB underlight.
SWAP_HANDS_ENABLE = no      # Enable one-hand typing
OLED_ENABLE = no            # OLED display
VIA_ENABLE = no            # Enable Via website to work/ its broken and cant show custom layout even on rev1 and r2g
VIAL_ENABLE = yes



# Allow config.h to detect left/right builds
EXTRAFLAGS += -DKEYMAP_SUFFIX_$(KEYMAP_SUFFIX)
## ------------------------
## ========== LEFT ==========
## ------------------------
ifeq ($(KEYMAP_SUFFIX), left)
    ENCODER_ENABLE = yes
	ENCODER_MAP_ENABLE = yes
    POINTING_DEVICE_ENABLE = no
endif

## ------------------------
## ========== RIGHT ==========
## ------------------------
ifeq ($(KEYMAP_SUFFIX), right)
    ENCODER_ENABLE = no
    POINTING_DEVICE_ENABLE = yes
	POINTING_DEVICE_DRIVER = cirque_pinnacle_i2c
endif