yum install tigervnc-server
yum groupinstall "GNOME Desktop"
vncpasswd
cp /lib/systemd/system/vncserver@.service /etc/systemd/system/vncserver@:1.service
firewall-cmd --permanent --zone=public --add-service vnc-server
firewall-cmd --reload
systemctl daemon-reload
systemctl enable vncserver@:1.service
vncserver