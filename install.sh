apt install axel xz-utils -y &&
axel -n8 -a -o /usr/bin/ffmpeg https://github.com/BtbN/FFmpeg-Builds/releases/download/latest/ffmpeg-master-latest-linux64-gpl-shared.tar.xz &&
tar -xf /usr/bin/ffmpeg.tar.xz &&
rm -rf /usr/bin/ffmpeg.tar.xz &&
mv /usr/bin/ffmpeg-master-latest-linux64-gpl-shared /usr/bin/ffmpeg &&
echo 'export PATH="/usr/bin/ffmpeg/bin:${PATH}"' >> /etc/profile &&
source /etc/profile &&
ffmpeg
