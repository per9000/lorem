lorem
=====

`lorem` is a python lorem ipsum generator for the console.

By default it just outputs the typical stuff you would expect from a lorem ipsum generator:

    $ lorem
    lorem ipsum dolor sit amet


But you can specify the number of words you want

    $ lorem -n 2
    lorem ipsum


Or the origin of the quote (12 is Strindberg).

    $ lorem -n 7 -q 12
    han kom som ett yrväder en aprilafton


If you prefer the to specify the number of characters then go ahead and do so:

    $ lorem -c 79 -q 11
    me quedo con el transparente hombrecillo que come los huevos de la golondrina m


But beware of the new line character at the end:

    $ lorem -c 79 -q 11 | wc -c
    80

    $ lorem -c 79 -q 11 | hd | tail -n 2
    00000040  6c 61 20 67 6f 6c 6f 6e  64 72 69 6e 61 20 6d 0a  |la golondrina m.|
    00000050


If the number of lines is more your style then use lines instead.
(Source 13 is from emacs spook).

    $ lorem -l 7 -q 13
    kubark cryptographic secure aiews hackers panama genetic communist
    blu114b illuminati fbi arnett defcon commecen ceridian allah
    gamma rs9512c sdi passwd emc safe morse eternity server terrorist
    defcon enforcers uscoi crypto anarchy waco texas autodin blue book
    $400 million in gold bullion ron brown csystems cida cypherpunk 64
    vauxhall cross asset key dateline cncis cdc norad domestic
    disruption cryptanalysis ermes


The help

    $ lorem -h
    Usage:    lorem [-n|-l|-c] N [-q M]?
              where
              N and M are integers

    Note:     If -n -l and/or -c are combined -l has priority over -c that has
              priority over -n.

              By default "-n 5" is activated.

    Examples: lorem -n 10
              Get 10 words of lorem.

              lorem -l 5
              Get 5 lines of lorem

              lorem -c 79
              Get 79 characters of lorem

              lorem -l 5 -q 11
              Get 5 lines of lorem from quote 11

    License:  Copyright (C) 2007 Per Erik Strandberg
              This program comes with ABSOLUTELY NO WARRANTY.

              This is free software, and you are welcome to redistribute it
              under the GNU GENERAL PUBLIC LICENSE Version 3.


    Options:
      --version   show program's version number and exit
      -h, --help  show this help message and exit
      -n N        Number of Words
      -l L        Number of Lines
      -c C        Number of Chars
      -q Q        Quote index (0+)

