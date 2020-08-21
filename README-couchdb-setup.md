This note is a bit of background and manual instruction for setup of a couchDb instance on the RPI

1) Most of the work is done by a shell script:

```
> cd ~/pitools
> sudo ./couchdb-setup.bsh joe foo
```

2) Manually check:
   * check that an uncommented "bind_address = 0.0.0.0" ended up in /home/couchdb/etc/local.ini in the [chttpd] section
   * check that your admin user/pswd combo ended up at the end of local.ini

3) Manually add one line to the system /etc/rc.local file.  Add exactly this line, before the final exit:
```
sudo -i -u couchdb /home/couchdb/bin/couchdb &
```

4) Reboot, then try connecing and logging in from a browser, like: http://192.168.1.93:5984/_utils

