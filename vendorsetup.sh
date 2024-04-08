# ROM source patches

color="\033[0;32m"
end="\033[0m"

echo -e "${color}Applying patches${end}"
sleep 1

# Remove pixel headers to avoid conflicts
rm -rf hardware/google/pixel/kernel_headers/Android.bp

# Remove hardware/lineage/compat to avoid conflicts
rm -rf hardware/lineage/compat/Android.bp

# Remove Miuicamera vendorsetup.sh & Clone Miuicamera.apk manully
cd vendor/xiaomi/camera/ 
rm -rf vendorsetup.sh && cd proprietary/system/priv-app/MiuiCamera
megadl 'https://mega.nz/file/tpsDlTZK#MHn_v46YNN4qZCgX3XGmWY26EIea0NY3yBCTbdebdm0'
cd ../../../../../../../
