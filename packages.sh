apt update -y
wget https://d1uj6qtbmh3dt5.cloudfront.net/NICE-GPG-KEY
gpg --import NICE-GPG-KEY
wget https://d1uj6qtbmh3dt5.cloudfront.net/2022.0/Servers/nice-dcv-2022.0-12760-ubuntu2004-x86_64.tgz
wget https://d1uj6qtbmh3dt5.cloudfront.net/nice-dcv-ubuntu2004-x86_64.tgz
tar -xvzf nice-dcv-2022.0-12760-ubuntu2004-x86_64.tgz && cd nice-dcv-2022.0-12760-ubuntu2004-x86_64
apt install ./nice-dcv-server_2022.0.12760-1_amd64.ubuntu2004.deb -y
apt install ./nice-dcv-web-viewer_2022.0.12760-1_amd64.ubuntu2004.deb -y
usermod -aG video dcv
apt install ./nice-xdcv_2022.0.424-1_amd64.ubuntu2004.deb -y
apt install ./nice-dcv-gl_2022.0.961-1_amd64.ubuntu2004.deb -y
apt install ./nice-dcv-simple-external-authenticator_2022.0.188-1_amd64.ubuntu2004.deb -y
apt install nvidia-driver-510 nvidia-dkms-510 -y
