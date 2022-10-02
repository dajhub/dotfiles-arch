# dotfiles-arch

### Brightness - Polybar Scroll
To allow users in the video group to change the brightness, a udev rule such as the following can be used (replace the <vendor> with your vendor id. e.g. intel_backlight) :

~~~
$ sudo nano /etc/udev/rules.d/backlight.rules
~~~
Then add the following to the newly created file:

~~~
ACTION=="add", SUBSYSTEM=="backlight", KERNEL=="<vendor>", RUN+="/bin/chgrp video /sys/class/backlight/%k/brightness"
ACTION=="add", SUBSYSTEM=="backlight", KERNEL=="<vendor>", RUN+="/bin/chmod g+w /sys/class/backlight/%k/brightness"
~~~

Then you need to add your user to the video group:

~~~
$ sudo usermod -aG video <user>
~~~

May need to reboot/restart.

