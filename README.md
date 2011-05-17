taunt
=====

Need your computer to hurl abuse at you? Broke the build? Dude walked in everyone hates?  
Use this gem to TAUNT!

Plays whatever sounds you dump into `~/.taunt` at random whenever you execute `taunt` _(ideally, you'd throw all the [Team Fortress 2](http://www.teamfortress.com/) sound files in there)_

Hate it? Hit me up on [@madlep](http://twitter.com/#!/madlep) or spam me on [julian.doherty.ml@gmail.com](mailto:julian.doherty.ml@gmail.com)

Usage
-----
    > gem install taunt

Then to play whatever you've dumped into `~/.taunt/` (it'll search recursively, so subdirs are fine)

    > taunt
    
Alternatively, just supply an argument if you want to play from a different directory

    > taunt ~/my_sounds/tf2/cool_stuff_heavy_says/

Todo
----
- Works on OS X (via [afplay](http://developer.apple.com/library/mac/#documentation/Darwin/Reference/ManPages/man1/afplay.1.html)) and Linux (via [aplay](http://linux.die.net/man/1/aplay)). (feel free to patch if you want Windows/whatever support)

Credits
-------
[madlep](https://github.com/madlep) original code, [chobomuffin](https://github.com/chobomuffin) Linux support

Copyright
---------

Copyright (c) 2011 Julian Doherty (madlep). See LICENSE.txt for
further details.

