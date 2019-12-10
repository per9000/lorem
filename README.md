lorem
=====
[![Run on Repl.it](https://repl.it/badge/github/per9000/lorem)](https://repl.it/github/per9000/lorem)

`lorem` is a python lorem ipsum generator for the console.

By default it just outputs the typical stuff you would expect from a lorem ipsum generator:

    $ lorem
    Lorem ipsum dolor sit amet,


But you can specify the number of words you want

    $ lorem -n 2
    lorem ipsum


Or the origin of the quote (4 is Strindberg).

    $ lorem -n 7 -q 4
    han kom som ett yrväder en aprilafton


If you prefer the to specify the number of characters then go ahead and do so:

    $ lorem -c79 -q 7
    At first, God created the sky, and the Earth. And the Earth was helter skelter,

But beware of the new line character at the end:

    $ lorem -c79 -q 7 | wc -c
    80

    $ lorem -c79 -q 7 | hd | tail -n 2
    00000040  68 65 6c 74 65 72 20 73  6b 65 6c 74 65 72 2c 0a  |helter skelter,.|
    00000050


If the number of lines is more your style then use lines instead.

    $ lorem -l 3 --spook
    Asset csystems BATF Blowpipe Soviet South Africa wire transfer. NSA event
    security Compsec spies benelux Sears Tower airframe red noise. Commecen Steve
    Case SCUD missile Kosovo quarter bce Bellcore SAPO. Asset IRA TWA rail gun CDMA


The lorems can also be randomized, and the case changed.

    $ lorem --bible -s 1 --randomize
    Earth bird, God the there from darkness the oversee and so?

    $ lorem --strandberg --upper -n 3
    FOO. FOO HOO?

    $ lorem --poe --lower -n 11
    once upon a midnight dreary, while i pondered, weak and weary.

    $ lorem --poe --lower -n 11 --randomize
    i there is purple nothing forgiveness darkness separate sorrow—sorrow word
    lenore.

The help

    $ lorem -h
    usage: lorem [-h] [-v] [-t] [--cols COLS] [--words N] [--sentences S]
                 [--lines L] [--chars C] [--lorem] [--decamerone] [--faust]
                 [--fleurs] [--strindberg] [--spook] [--poe] [--strandberg]
                 [--bible] [-q Q] [--lower] [--upper] [--randomize]

    lorem - Create more or less random lorem ipsum text.

    optional arguments:
      -h, --help            show this help message and exit
      -v, --version         show program's version number and exit
      -t                    run self-tests and exit
      --cols COLS           override line width - default 80

    output format (mutually exclusive):
      --words N, -n N       number of words
      --sentences S, -s S   number of sentences
      --lines L, -l L       number of lines
      --chars C, -c C       number of characters (excl. final newline)

    qoute selection:
      --lorem, --cicero     "Lorem ipsum dolor sit amet..."
      --decamerone, --boccaccio
                            "Ser Cepperello con una falsa confessione..."
      --faust, --goethe     "Ihr naht euch wieder..."
      --fleurs, --beaudelaire
                            "Lorsque, par un décret..."
      --strindberg, --hemsöborna
                            "Han kom som ett yrväder en aprilafton..."
      --spook, --emacs      "Asset csystems BATF Blowpipe Soviet..."
      --poe, --raven        "Once upon a midnight dreary, while I pondered, weak
                            and weary,..."
      --strandberg, --foo   "Foo. Foo hoo? Foo bar. Foo bar, baz..."
      --bible, --genesis    "At first, God created the sky, and..."
      -q Q, --quote Q       select source by index instead, q = 1, 2, ...

    options for sentences:
      --lower               all lower case (default false)
      --upper               all upper case (default false)
      --randomize           randomize order (default false)

