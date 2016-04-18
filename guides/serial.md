---
layout: guide
banner: images/coolterm-banner.png
---

# Print debugging over USB

To know what your mbed is up to, it is very useful to be able to log output to a terminal on your computer.

How to do the printing on the mbed is explained in the [c++ guide](guides/cpp-intro.html#printing-in-mbed-c).
This guide will walk you through how to set up the required software on your computer.

## Windows

For print debugging to work on Windows, you need to install two things:
a serial driver that lets the mbed communicate over USB properly,
and a terminal that can view the output that is transmitted.

### Driver

Download the [serial driver](http://developer.mbed.org/media/downloads/drivers/mbedWinSerial_16466.exe).

Plug the mbed into your computer, and then run the installer.
Click through yes, accept, trust, etc on all the dialog boxes that pop up.
After a while, the serial driver will be installed.

![](images/serial-windows-install.png)

### Terminal

Download and install [termite](http://www.compuphase.com/software/termite-3.1.exe) which will be used for displaying the print output from the mbed.

![](images/termite.png)

In the settings menu, make sure the settings are set like in this image:

![](images/termite-settings.png)

If you get stuck, you can check out the troubleshooting section of the [mbed handbook serial configuration guide](http://developer.mbed.org/handbook/Windows-serial-configuration).

## OS X

Download [CoolTerm](http://www.macupdate.com/app/mac/31352/coolterm).

Plug the mbed into your computer. Open CoolTerm and click Options.

![](images/coolterm.png)

Select the usbdevice in the dropdown menu.

![](images/coolterm-serial-list.png)

Finally, press connect.

![](images/coolterm-connect.png)

## Linux

Download this thing (we haven't tested it).

[CoolTerm](http://freeware.the-meiers.org/CoolTermLinux.zip)
