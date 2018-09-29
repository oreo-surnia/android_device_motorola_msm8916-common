#!/sbin/sh
if [ ! -r /system/build.prop ]; then
    return 0
fi
chmod 644 "/system/build.prop"
chmod 644 "/vendor/build.prop"
