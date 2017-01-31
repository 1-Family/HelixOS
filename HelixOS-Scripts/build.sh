. build/envsetup.sh
lunch aosp_shamu-user	
sudo make -j4

export PATH=/usr/lib/jvm/java-7-oracle/bin:/ssd2/out/HelixOS-PulledFromGitHub/host/linux-x86/bin:/home/vitaliy/android/HelixOS-PulledFromGitHub/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.8/bin:/home/vitaliy/android/HelixOS-PulledFromGitHub/prebuilts/gcc/linux-x86/:/home/vitaliy/android/HelixOS-PulledFromGitHub/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8/bin:/home/vitaliy/android/HelixOS-PulledFromGitHub/development/scripts:/home/vitaliy/android/HelixOS-PulledFromGitHub/prebuilts/devtools/tools:/home/vitaliy/android/HelixOS-PulledFromGitHub/prebuilts/android-emulator/linux-x86_64:/home/vitaliy/bin/adt-bundle-linux-x86_64-20130522/sdk/platform-tools:/home/vitaliy/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games
export JAVA_HOME=/usr/lib/jvm/java-7-oracle

was:
/usr/lib/jvm/java-7-openjdk-amd64/bin



Kernel (AOSP instructions):
export ARCH=arm64
export CROSS_COMPILE=aarch64-linux-android-
cd kernel/google/shamu-msm
make msm_defconfig
