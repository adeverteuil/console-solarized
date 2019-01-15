#!/bin/sh


# enable by default if found, disable if rd.solarized=0/off/no
if type console-solarized >/dev/null && getargbool 1 rd.solarized; then

	# make sure console is ready
	udevadm trigger --action=add --subsystem-match=tty >/dev/null 2>&1
	udevadm settle --timeout=180 2>&1 | vinfo

	# get the console device
	read consoledev rest < /sys/class/tty/console/active
	consoledev="${consoledev:-tty0}"

	if [ -c "/dev/${consoledev}" ]; then

		if [ -x /lib/udev/console_init ]; then
			/lib/udev/console_init "/dev/${consoledev}"
		fi

		console-solarized > "/dev/${consoledev}" | vinfo
	fi

fi
