OMXPlayer-Sync
==============

OMXPlayer-Sync facilitates synchronization of multiple OMXPlayer 
instances over the network in a master/slave fashion.

Usage
-----

```
$ ./omxplayer-sync -h
Usage: omxplayer-sync [options] filename

Options:
  -h, --help            show this help message and exit
  -m, --master          
  -l, --slave           
  -x DESTINATION, --destination=DESTINATION
  -u, --loop            
  -v, --verbose
```

**master**

```
omxplayer -v -m -x 255.255.255.255 movie.mp4
```

**slave**

```
omxplayer -v -l movie.mp4
```


Requirements
------------
A recent version of [pyexpect](http://www.noah.org/wiki/pexpect).

Currently my [fork](https://github.com/digicious/omxplayer) of omxplayer is required.

if you just want to hide all console output during boot, you can make the following changes to /boot/cmdline.txt, so that just the raspberry logo is shown during boot and nothing else:

Replace "console=tty1" by "console=tty3" to redirect boot messages to the third console.
Add "loglevel=3" to disable non-critical kernel log messages.
Hide the text cursor: "vt.global_cursor_default=0".
To see the console output anyway, just press Alt+F3 during or after boot.

You might also want to comment out the line in /etc/inittab that starts a getty process (the login prompt) on tty1.

Also, you can remove the pi logo during startup by changing the /boot/cmdline.txt 
Just append

```
logo.nologo  

```
at the end of the first line. 



