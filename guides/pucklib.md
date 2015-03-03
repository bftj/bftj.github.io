---
layout: guide
banner: images/pucklib.png
---

# Using the Puck Library

When you're prototyping Bluetooth Low Energy apps on an mbed, the easiest way to get started is by using the Puck library.
The library makes it easy to make simple BLE devices that use readable and writable GATT attributes to communicate wirelessly.
This guide will demonstrate how to setup a project that uses the Puck library in the [mbed online compiler](https://developer.mbed.org/compiler).

## Importing the Puck library for use

So you have already created a project in the [online compiler](https://developer.mbed.org/compiler), and you want to add the Puck library.
Click "Import" in the compiler menu, and search for "Puck".
The top hit will be the Nordic Puck library.
Double-click it, and it will automatically be imported to your project.

## Enabling it in the code

The puck library needs to be included in your main.cpp file to work.
Slap this in the top of your file, and you should be good:

```cpp
#include "Puck.h"
```

If you want to enable debug logging from the puck library, you can define a log level before including the Puck header:

```cpp
#define LOG_LEVEL_DEBUG
#include "Puck.h"
```

There are 5 different log levels: `LOG_LEVEL_ERROR`, `LOG_LEVEL_WARNING`, `LOG_LEVEL_INFO`, `LOG_LEVEL_DEBUG` and `LOG_LEVEL_VERBOSE`.

When you have included the Puck header, you can grab a reference to the puck like this:

```cpp
Puck* puck = &Puck::getPuck();
```

Finally, the Puck library acts a cooperative multitasker coordinator, which means that it needs control over the main loop of the program.
This means that your main loop should look like this:

```cpp
puck->init(0x1234);
while(puck->drive()) {
    /* do stuff here if you want, but nothing that takes too long */
}
```

Note that we also call `puck->init(..)` here.
This function tells the puck library that is has been configured, and that the drive loop is about to start.
The init function should be the last puck method call before `puck->drive()`.
That means that everything described in the following sections of the guide should happen *before* `puck->init(..)`.

## Setting up GATT Characteristics

Now that your puck is up and running, you might want to set up some GATT Attributes ("variables that can be read and set via Bluetooth"):

```cpp
const UUID serviceUuid =
    stringToUUID("16 letter ident.");
const UUID characteristicUuid =
    stringToUUID("-must be unique-");
int number_of_bytes = 20;
puck->addCharacteristic(
    serviceUuid,
    characteristicUuid,
    number_of_bytes);
```

This adds a GATT Service called `16 letter ident.` with a 20-byte read/writable characteristic called `-must be unique-`.  (`stringToUUID` is a helper function included with the Puck library).

## Reacting to GATT Characteristic writes

If you want to react on the mbed when a characteristic is written, you can do that!
Setting it up is simple:

```cpp
void onChange(const uint8_t* value, const uint8_t length) {
    /* The characteristic has just been changed,
     * we can do something with it here. */
}

puck->onCharacteristicWrite(&characteristicUuid, onChange);
```

Now, the `onChange` function will be called every time that GATT Charactertistic is written over Bluetooth.

## Useful links

- [Puck library documentation](http://developer.mbed.org/teams/Nordic-Pucks/code/Puck/docs/e41c83f1430e/classPuck.html)
