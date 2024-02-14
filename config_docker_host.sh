echo '{"insecure-registries" : [ "artifactory.guard.knox:8082" ]}' > /etc/docker/daemon.json
systemctl restart docker.service
sudo -u $SUDO_USER docker login artifactory.guard.knox:8082
echo "DONE"
