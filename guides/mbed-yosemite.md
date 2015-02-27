---
layout: guide
banner: images/mbed-yosemite-banner.jpg
---

# Flashing your mbed on OS X yosemite

Unfortunately, there is a bug preventing you from flashing your mbed on Yosemite the normal way.
A fix is on the way, but not released yet.

The easiest way to flash your mbed for now, is therefore using a third-party tool.
Just download [mbed-on-Yosemite](assets/mbed-on-Yosemite.app.zip), unzip it and put it in your Applications folder.
Then run it, and instead of dragging the mbed hex files onto the mbed drive, drag them onto the 'mbed-on-Yosemite' application.
Then press 'run', which will prompt you for your administrator password.

The mbed drive should then dismount (presenting a warning that the disk was ejected).
The mbed drive then mounts again presenting a warning again.

Now, simply reset the mbed and your code should be running.
