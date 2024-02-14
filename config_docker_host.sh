#todo add check if $1 exists
echo '{"insecure-registries" : [ \"${1}\" ]}' > /etc/docker/daemon.json
systemctl restart docker.service
sudo -u $SUDO_USER docker login $1
echo "DONE"
