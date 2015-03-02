---
layout: guide
---

# Exercise 1

1. **Register an account on [developer.mbed.org](https://developer.mbed.org) and associate your dev board.**
There is a [step-by-step guide available in the guides section](guides/mbed-org.html).

1. **Import the location puck in the [online compiler](https://developer.mbed.org/compiler/).**
See the [step-by-step import guide](guides/mbed-import.html) for tips if you get stuck.

1. **Set a unique advertising ID for your device in main.cpp**. By default it will be `0xBA55`. You can put anything you want here, as long as it is a positive number less than or equal to `0xFFFF`.
![](images/main-cpp-id.png)

1. **Compile the project and flash your development board with the program.**

1. **Run the program by pressing reset on the board** (you need to do this every time you flash it)

1. **Check that your development board is advertising by using [Master Control Panel (Android)](https://play.google.com/store/apps/details?id=no.nordicsemi.android.mcp&hl=en) or [LightBlue (iOS)](https://itunes.apple.com/en/app/lightblue-bluetooth-low-energy/id557428110?mt=8) on your smartphone**.

If you were able to find your device using your smartphone, you have completed exercise 1.
Congratulations!
Now you can [read up on some of the guides](guides) if you want, or continue with [the next exercise](exercises/exercise-2.html), or just chill out for a bit until we continue with the slides afterwards.

# Tips

If you have a hard time completing this assignment here are some resources for you to have a look at.

[First time setup](guides/mbed-org.html)  
[How to use libraries on mbed.org](guides/mbed-import.html)  
[How to use the puck library](guides/pucklib.html)  
[C++ for the mbed developer](guides/cpp-intro.html)
