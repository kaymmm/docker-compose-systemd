sudo cp docker* /usr/lib/systemd/system
sudo systemctl daemon-reload
sudo systemctl enable docker-cleanup.timer
sudo systemctl enable docker-compose@arch-delugevpn.service
sudo systemctl enable docker-reload@homeassistant.timer
sudo systemctl enable docker-reload@arch-delugevpn.timer
sudo systemctl enable docker-compose@homeassistant.service
sudo systemctl start docker-reload@arch-delugevpn.timer
sudo systemctl start docker-compose@arch-delugevpn.service
sudo systemctl start docker-reload@homeassistant.timer
sudo systemctl start docker-compose@homeassistant.service
sudo systemctl start docker-cleanup.timer
