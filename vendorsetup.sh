# ROM source patches

color="\033[0;32m"
end="\033[0m"

echo -e "${color}Applying patches${end}"
sleep 1

echo -e "${color}ViperFX Patch{end}"
sleep 1

# Clone Viper Repo
git clone https://github.com/TogoFire/packages_apps_ViPER4AndroidFX packages/apps/ViPER4AndroidFX

# Update Viper4AndroidFX APK
VIPER_DIR="packages/apps/ViPER4AndroidFX"
APK_DIR="system/app/ViPER4AndroidFX"
URL="https://sourceforge.net/projects/guidixproject/files/files/ViPER4AndroidFX.apk"

# Calculate the checksum of Viper.apk
if [ -d "$VIPER_DIR" ]; then
current_checksum=$(md5sum "${VIPER_DIR}/${APK_DIR}/ViPER4AndroidFX.apk" | awk '{ print $1 }')

# Expected Viper checksum
expected_checksum="63e5a95bbff062a36207a74b9cf0ae75"

# Compare the current checksum with the expected checksum
 if [ "$current_checksum" != "$expected_checksum" ]; then
   echo -e "${color}Patching Viper Please Wait ${end}"
   rm -rf ${VIPER_DIR}/${APK_DIR}/ViPER4AndroidFX.apk
   wget ${URL} -O ${VIPER_DIR}/${APK_DIR}/ViPER4AndroidFX.apk
 fi
fi