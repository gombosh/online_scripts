#todo add check if $1 exists
echo "START CONFIGURATION"
cat << EOF > /etc/docker/daemon.json
{"insecure-registries" : [
  "$1"
]}
EOF
systemctl restart docker.service
sudo -u $SUDO_USER docker login $1
echo "DONE"
