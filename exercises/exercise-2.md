---
layout: guide
banner: images/ex2-banner.jpg
---

# Exercise 2

In exercise 2, we are going to make a program that is capable of receiving chat messages over Bluetooth, and printing those messages to a terminal on your laptop using the USB connection.

1. **Create a new project on the [online compiler](https://developer.mbed.org/compiler) based on the Puck library.**
Remember to set a unique ID in the puck `init` function, as this will make your life much easier later on.
Check out the [library importing guide](guides/mbed-import.html) if you get stuck.

1. **Create a GATT Characteristic for receiving chat messages using the Puck library.**
In order to be able to receive information over Bluetooth, we need to make a writable GATT characteristic.
Make one that is 20 bytes long, which is the maximum length allowed for characteristics.
(Check out the [Puck lib tutorial](http://localhost:4000/guides/pucklib.html) for a quick refresher on how to do that if you get stuck.)
When you have made a characteristic, compiled, flashed and run your code on the development board, you should be able to see the characteristic available from your smartphone using a BLE inspector app such as
[B-BLE](https://play.google.com/store/apps/details?id=com.billy.billylightblue&hl=en) or
[LightBlue](https://itunes.apple.com/en/app/lightblue-bluetooth-low-energy/id557428110).

1. **Add a `onCharacteristicWrite` handler to your program.**
Now that we are able to write data to the puck over Bluetooth using our cell phones, we should find something useful to do with this data.
One cool thing to do is to print it out to a terminal on your laptop, so let's do that in the next step.

1. **Install a terminal on your machine if you don't already have one.**
For Windows, you can use [Termite](http://www.compuphase.com/software/termite-3.1.exe).
For Linux, you can use [Minicom](https://help.ubuntu.com/community/Minicom).
For OS X, you can use [CoolTerm](http://freeware.the-meiers.org/CoolTermMac.zip).
If you are on Windows, you will also need to [install a serial driver](http://developer.mbed.org/handbook/Windows-serial-configuration).
Check out the [print debugging guide](guides/serial.html) if you get stuck.


1. **Start the terminal, run the program, and see if it all works!**
You should be able to connect to the puck with your phone, write messages to your message GATT characteristic, and see them appear in your terminal on the laptop.
Pretty nifty.

![](images/ex2-termite.png)

This concludes exercise 2.
Well done if you were able to get this far with everything working!
If you are stuck on anything, don't forget that you can raise your hand and we will come help you out.
