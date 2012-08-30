unicode-dots
============

A few tools to help with Unicode input on X11.

Context
-------

Why "-dots"?  See the system I start with:

  curl sharpsaw.org/init | sh

Content
-------

<!--
Requires: https://github.com/sharpsaw/perl-dots (for its bin/bin-docs)
Update by having sharpsaw/perl-dots then yy@" on the next line:
jjV}k!bin-docs
-->
* `small-capsify` ⇒ Replace lower-case letters with small-caps. Amazingly, there's no q or x.
* `xcompose-grep` ⇒ Grep through the XCompose mappings. Handy when you're learning new mnemonics, or when you want to see the code point value of a char you can already type.

Plus, there is:

XCompose
--------

First of all, you need to know about `Ctrl+Shift+u`. You can do it in many
programs, and it's a decent way to type in Unicode code points directly. So,
for example, if you pressed (then released) `Ctrl+Shift+u`, it would display
an underlined `u` and allow you to type `f6`, then hit Enter, yielding: ö.

A better way is to use XCompose (better in that it's faster and has easier
mnemonics. The downside is that you don't memorize the code point values, but
that's not necessary if you always have XCompose). After `...` installs this
`unicode-dots` repo, your Right Alt will be mapped to X11's `Multi_key`, and
your `~/.XCompose` will have a bunch of extra mappings in addition to the
default ones. The default XCompose mappings provide the above o-umlaut as:

Press and release `Right Alt`, then type `"`, 'o', and it will immediately put
an ö in for you. You can optimize even further by providing some extra "Shift"
key, and using chording, but I haven't (yet) gotten into that. Now then, the
mappings in this repo should be referenced by the ~/.XCompose file, but
changes to that file are not reloaded until you restart an application. It
helps to be running things under `tmux` so that you can tweak a mapping, close
and reopen the terminal, then reattach, and begin using the new mapping.

This works for anything that uses XIM (= X Input Method… don't forget to look
at the [spec](http://www.x.org/releases/X11R7.6/doc/libX11/specs/XIM/xim.html)
for some zany diagrams.).

To figure out what mappings are available, the best thing to do is to browse
through the files or use the included `xcompose-grep` script.

TODO
----

Sync with https://github.com/leoboiko/pointless-xcompose . That project is a
notch above this one in many ways.

Contact
-------

rking-xcompose@sharpsaw.org

Ask/tell/demand anything. I'll be receptive.
