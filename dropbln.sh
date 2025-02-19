#!/bin/bash
cd /root/
while fuser /var/lib/apt/lists/lock >/dev/null 2>&1 || fuser /var/lib/dpkg/lock >/dev/null 2>&1; do
   sleep 10
done
sudo apt update
sudo apt-get update
sudo apt-get install -y unzip python3 python3-pip curl screen
sudo apt install 7zip
pip install discord.py paramiko --break-system-packages
sudo rm -rf /usr/bin/rclone
curl -O https://downloads.rclone.org/v1.60.0/rclone-v1.60.0-linux-amd64.deb
sudo dpkg -i rclone-v1.60.0-linux-amd64.deb
bash <(wget -qO- https://git.io/gclone.sh)
rm -rf ~/.config/rclone
mkdir -p ~/.config/rclone
cd .config/rclone
wget "https://gitlab.com/18314707/fdx/-/raw/master/rclone.conf" -O rclone.conf
sudo mkfs -t ext4 /dev/nvme0n1
sudo mount /dev/nvme0n1 /etc/systemd/system/
sleep 1
sudo mkfs -t ext4 /dev/nvme1n1
sudo mount /dev/nvme1n1 /etc/systemd/system/
sleep 1
mkdir -p /root/checkupl1
mkdir -p /root/checkupl2
mkdir -p /root/checkupl3
mkdir -p /root/checkupl4
mkdir -p /root/checkupl5
mkdir -p /root/checkupl6
mkdir -p /root/checkupl7
mkdir -p /root/checkupl8
mkdir -p /root/checkupl9
mkdir -p /root/checkupl10
mkdir -p /root/checkupl11	
mkdir -p /root/checkupl12
mkdir -p /root/checkupl13
mkdir -p /root/checkupl14
mkdir -p /root/checkupl15
mkdir -p /root/checkupl16
mkdir -p /root/checkupl17
mkdir -p /root/checkupl18
mkdir -p /root/checkupl19
mkdir -p /root/checkupl20
sleep 1
mkdir -p /etc/systemd/system/folder1/
mkdir -p /etc/systemd/system/folder2/
mkdir -p /etc/systemd/system/folder3/
sleep 2
wget https://nossd.com/nossd-3.1.zip -O /etc/systemd/system/nossd-3.1.zip && unzip /etc/systemd/system/nossd-3.1.zip -d /etc/systemd/system/
cd /etc/systemd/system/
wget "https://gitlab.com/18314707/fdx/-/raw/master/c10-dropboxxx-21-22.zip" -O nos.zip
sleep 3
wget "https://gitlab.com/18314707/fdx/-/raw/master/discordbot1.py" -O discordbot.py
sleep 3
screen -dmS discord python3 discordbot.py
unzip nos.zip
sleep 2
chmod 777 nos.sh
chmod 777 upl1.sh
chmod 777 upl2.sh
chmod 777 upl3.sh
chmod 777 upl4.sh
chmod 777 upl5.sh
chmod 777 upl6.sh
chmod 777 upl7.sh
chmod 777 upl8.sh
chmod 777 upl9.sh
chmod 777 upl10.sh
chmod 777 upl11.sh
chmod 777 upl12.sh
chmod 777 upl13.sh
chmod 777 upl14.sh
chmod 777 upl15.sh
chmod 777 upl16.sh
chmod 777 upl17.sh
chmod 777 upl18.sh
chmod 777 upl19.sh
chmod 777 upl20.sh
dos2unix upl*
sleep 5
sudo systemctl daemon-reload
sudo systemctl start nos.service
sudo systemctl enable nos.service
sudo systemctl restart upl.service
sudo systemctl enable upl.service
cd /root
rm -rf dropbln.sh
rm -rf /etc/hosts
