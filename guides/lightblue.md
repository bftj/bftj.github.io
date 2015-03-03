---
layout: guide
banner: images/lightblue-banner.png
---

# Using LightBlue for iOS

[LightBlue](https://itunes.apple.com/en/app/lightblue-bluetooth-low-energy/id557428110) is an iOS app for inspecting Bluetooth LE devices.
This guide will walk through discovering devices, and reading & writing their characteristics.

When you first open the app, you will see all nearby BLE devices.

![](images/lightblue2.png)

The signal strength is a good indication of how close devices are, so you will normally connect to the device with the best signal.
When connected, you're presented with a screen listing all of the device's characteristics.

![](images/lightblue3.png)

If you press 'show' next to the heading saying 'Advertisement data', you will see the information the device is advertising.
The long hex string called Manufacturer data contains (amongst other things) the ID you've defined in the puck's init method.
In the screenshot below, the puck's ID was `abba`.

![](images/lightblue4.png)

Underneath the advertisement data are the characteristics.
You can press one of them to read its value and write to it.

This is what the characteristics screen looks like.

![](images/lightblue5.png)

The default when you're writing to a characteristic is to write a hexadecimal value. If you press 'Write new value, you're presented with a hex keyboard and may type in hexadecimal characters and press 'Done'. This will write the hex value to the characteristic.

![](images/lightblue7.png)

You may change the format by pressing the button saying 'Hex' in the upper right corner.

![](images/lightblue-switchmode.png)

If you want to write text strings, press the line saying UTF-8 String.

![](images/lightblue9.png)

Now, when you're writing a value to the characteristic, you get a regular keyboard and can write some text instead.

![](images/lightblue10.png)
