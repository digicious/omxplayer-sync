OMXPlayer-Sync
==============

OMXPlayer-Sync facilitates synchronization of multiple OMXPlayer 
instances over the network in a master/slave fashion.

https://vimeo.com/65737409

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

Currently my [fork](https://github.com/turingmachine/omxplayer/tree/fixes) of omxplayer is required.

A build of this fork can be found at [yokto.magdesign.ch](http://yokto.magdesign.ch).
 

Settings
--------

```
OMXPLAYER = 'omxplayer'
PORT = 1666
TOLERANCE = 0.2
ADJUST_OMXPLAYER = -0.1
ADJUST_MASTER = 0.0
ADJUST_SLAVE = 0.0
SEEK_SIZE = 5
```


f you just want to hide all console output during boot, you can make the following changes to /boot/cmdline.txt, so that just the raspberry logo is shown during boot and nothing else:

Replace "console=tty1" by "console=tty3" to redirect boot messages to the third console.
Add "loglevel=3" to disable non-critical kernel log messages.
Hide the text cursor: "vt.global_cursor_default=0".
To see the console output anyway, just press Alt+F3 during or after boot.

You might also want to comment out the line in /etc/inittab that starts a getty process (the login prompt) on tty1.
