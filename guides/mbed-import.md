---
layout: guide
banner: images/mbed-import-banner.png
---

# Import guide for mbed compiler

This guide shows you how to import libraries into your projects in the [mbed compiler](guides/mbed-org.html).

[Here is a direct link to the compiler where you write your mbed code](https://developer.mbed.org/compiler/).

## Create a new project

In your compiler press the drop down arrow on the `New` button in the top left part of the compiler and select `New program`.

![](images/mbed-import-1.png)

In the pop up you enter your platform and your project name.
You can either use a pre defined template or have an empty project.
We will choose no template here.

![](images/mbed-import-2.png)

Right click your new project in the left column and select `New file`.
Name your file `main.cpp`.

## Import a library to your project

In the left column of your compiler, locate your project.
Right click your project and select `Import Library -> From Import Wizard ...`.
You are now shown the `Import Wizard`, here you can find libraries on mbed.org and import these.

![](images/mbed-import-3.png)

The first library in your list should be `mbed`.
Double click this to import it.

If you need to search for libraries you can so do by using the search field in the top right area.

![](images/mbed-import-4.png)

## Using your imported library

Go back to your `main.cpp` file.
You can now use your imported library in your other files.
To do this you need to include the library with this code snippet `#include ...`.

The following code imports the mbed library and makes the first led blink.

```
#include "mbed.h"

DigitalOut myled(LED1);

int main() {
    while(1) { // infinite loop
        myled = 1;
        wait(0.2);
        myled = 0;
        wait(0.2);
    }
}
```

![](images/mbed-import-5.png)

Now you can compile and run your code!
Check our [our compile guide](guides/mbed-compile.html) for infor about how to do that.
