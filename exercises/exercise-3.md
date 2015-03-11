---
layout: guide
banner: http://i.imgur.com/82HNjrF.jpg
---

# Exercise 3

In exercise 3, we are going to make a puck that listens for button presses on the mbed, and push-notifies your mobile phone using BLE.

1. **Create a new project on the [online compiler](https://developer.mbed.org/compiler) that imports the Puck library.**
Remember to set a unique ID in the puck `init` function, as this will make your life much easier later on.
Check out the [library importing guide](guides/mbed-import.html) if you get stuck.

1. **Set up button interrupts to react on button presses.**
Try debug printing to the terminal when a button is pressed to verify that the button interrupts are hooked up correctly.
You can use [InterruptIn](http://developer.mbed.org/handbook/InterruptIn) to set up this.

1. **Create a GATT Characteristic for notifing button presses.**
We can create a single characteristic that holds the value `0` when no button is pressed, `1` when button 1 is pressed, `2` when button 2 is pressed, etc.
Set the characteristic to `NOTIFY` and `READ`.

The service ID should be `bftj cube       `, and the characteristic ID `bftj cube dirctn`.
This causes the Puck Central phone app to think that your mbed is a "cube", which is the only thing it currently supports reacting to.
The following is an overview of the numbers you can write to the characteristic, and their name in the app.

Number | Name
-------| -------------
0      | Up
1      | Down
2      | Left
3      | Right
4      | Front
5      | Back

1. **Get a hold of the [Puck Central app](/guides/puckcentral.html).**
We're going to use this app, since it supports notify.
Alternatively, LightBlue also supports notify.

1. **Add rules to the Puck Central app that post to the Internet when notify is triggered**
Post to this url: `http://wall.bftj.co/`.
In the post body, just write a single number 1, 2, 3 or 4, in the following format:

```
message=1
```

1. **Try connecting it all together and pushing the buttons.**
If it is all working correctly, you should see the counter at wall.bftj.co increase on each button press!

If you made it this far, congratulations!
