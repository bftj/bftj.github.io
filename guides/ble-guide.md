---
layout: guide
banner: images/bluetooth-primer.jpg
---

# Bluetooth Low Energy Primer

This is a short introduction to Bluetooth Low Energy, and how it will make your life better.

Bluetooth Low Energy, or just Bluetooth 4.0, or BLE, (or Bluetooth Smart, this baby has a lot of names), is the current new hot thing in the wireless technology world.
It allows low energy short range wireless communication between devices.

## Advertising

Normally, a BLE device starts off its life by advertising some data.
This typically means that it every few seconds shouts out some information over the radio waves.
This information usually contains some useful things like its name, address, and what kind of things it can do.

## Connecting

If someone is interested enough in what a device is advertising, they may connect to the advertising device.
The advertising device then stops advertising, and offers its services to the connecting party instead.
If they decide to disconnect, the device may start advertising again, allowing others to connect.

In order to achieve its low energy usage, and maybe also in order to increase standardization, BLE has a bunch of methods and concepts that you have to use.
You cannot simply open a "BLE socket" and start pumping data like you normally would if you connect to a server using TCP or something like that.

![](/images/ble-guide-simply.jpg)

Rather, you have to use something called services and characteristics once you have connected.

## Services

> A service is a collection of data and associated behaviors to accomplish a particular function or feature of a device or portions of a device.

So says the official BLE spec.
To make this a little more concrete, have an example: A smartwatch might offer two services: one heart rate reading service, and one temperature measurement service.

## Characteristics

> A characteristic is a value used in a service along with properties and configuration information about how the value is accessed and information about how the value is displayed or represented.

A characteristic is basically a 20-byte variable that can be read or written to over the air.
This is the bread and butter of doing BLE communications.
Each service can have several characteristics.

Example: A heart rate service may expose two characteristics, one called "heart_rate", and one called "body_location".
These characteristics can be read to get the current measured heart rate and body location reported by the heart rate device.
