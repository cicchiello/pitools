To setup static ip address:
- make sure "predictable network names" is disabled via raspi-config
  (this will ensure that interface names like eth0/wlan0 are used, making
  the following instructions possible)
- in dhcpcd.conf add the following near the end (no indenting):
    interface eth0
    static ip_address=192.168.1.93/24
    static routers=192.168.1.1
    static domain_name_servers=192.168.1.1 8.8.8.8 
