#todo add check if $1 exists
echo '{"insecure-registries" : [ "' > /etc/docker/daemon.json
echo $1 >> /etc/docker/daemon.json
echo '" ]}' >> /etc/docker/daemon.json
systemctl restart docker.service
sudo -u $SUDO_USER docker login $1
echo "DONE"
