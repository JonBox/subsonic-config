#/bin/bash
sudo mkdir /home/jon/Dropbox
sudo mkdir /home/jon/DropboxConfig
sudo mkdir /home/jon/airsonic
sudo chmod a+rwx /home/jon/Dropbox
sudo chmod a+rwx /home/jon/DropboxConfig
sudo chmod a+rwx /home/jon/airsonic
sudo dnf install openssh-server
sudo systemctl enable sshd
sudo systemctl start sshd
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl start docker
sudo docker-compose -f subsonic.yml up