# SOCAT Serial Server
### Run socat as a service to access serial devices remotely

#### Requires: socat

I originally wrote this to serve up 2 serial devices: one connected to a relay that enables/disables my ALS-600 amplifier, and another connected to my LDG-AT1000ProII antenna tuner. They can be customized to your needs if you want.

Instructions:
* edit one or both of the .sh files to configure the serial device to your needs (baud rate, etc)
  * port should be in the unreserved portion, between 49152 - 65535
* place the .sh file(s) under /usr/local/scripts
* edit one or both of the .service files to invoke your .sh script and point to the correct serial device and your desired port
* copy the .service file to /etc/systemd/system
* run, for example, 'systemctl enable ampport.service --now' to add the service and start it
* you should now be able to connect to the tcp port you specified and send/receive data to and from your serial device
* Note that firewalls may get in the way of the tcp/ip connection. Fixing that is beyond the scope of this document
* if you have more than one device you want to serve, and those usb serial adapters have the exact same VID/PID pair, then you have to get creative with udev rules to make sure they get the same ttyUSBx after a reboot. See 50-usb-serial.rules for details, and put your version into /etc/udeb/rules.d

My Setup:

I run this on a raspberry pi with the two serial devices connected. I use one of my other projects [LDGControl](https://github.com/efpophis/LDGControl) to connect and interact with the devices. This works on my LAN, and should work remotely thanks to my SoftEther VPN server (not yet tested).

