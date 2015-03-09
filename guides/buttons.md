---
layout: guide
banner: images/bigredbutton.jpg
---

# Buttons

Using the buttons on the mbed board is an easy way to trigger some code execution, either for simple debugging or maybe using the mbed as a game controller.

![](/images/gamecontroller.png)

Can you tell the difference between the two game controllers?

## Interrupts

The best way to listen for button presses, is using a technique known as interrupts.

```cpp
InterruptIn myButton(BUTTON1);
...
myButton.rise(&callback);
myButton.enable_irq();
```

`&callback` is a reference to our callback function where we will handle the button press.

```cpp
int buttonHasBeenPressed = 0;

void callback() {
    buttonHasBeenPressed = 1;
}

while(puck->drive()) {
    if(buttonHasBeenPressed) {
        /* do stuff */
        buttonHasBeenPressed = 0;
    }
}
```

One thing to remember here, is that you want to spend as little time as possible in the callback handler itself. This is because we're *interrupting* the main loop which was currently busy doing something important.
By simply setting a flag on the `buttonHasBeenPressed` variable, we can deal with the button press the next time we're free, in the main loop.

When we're done handling the button press, we must remember to clear the flag, so the button won't be registered multiple times.
Clearing the flag is done by writing `buttonHasBeenPressed = 0`.
