Disabling wifi is closely related to ensuring access thru ethernet.
In the situations where I've wanted to do this, I've also wanted a static
ethernet ip address.  So, see README-static-ip.mc.

0) make sure "predictable network names" is disabled via raspi-config
  (this will ensure that interface names like eth0/wlan0 are used, making
  the following instructions possible)
  
1) in /etc/network/interfaces, comment out the section(s) about wlan0/wlan1.
I.e:
   #allow-hotplug wlan0
   #iface wlan0 inet manual
   #    wpa-conf /etc/wpa_supplicant/wpa_supplicant.conf

   #allow-hotplug wlan1
   #iface wlan1 inet manual
   #    wpa-conf /etc/wpa_supplicant/wpa_supplicant.conf

2) in /boot/config.txt, add (at the end):
dtoverlay=disable-wifi

3) Optionally, if you are disabling wifi to minimize power, you might also
want to disable bluetooth.  So, also in /boot/config.txt: 
dtoverlay=disable-bt
