2IW05-project
=============

Software specification project

Dependencies
------------

* [mscgen](http://www.mcternan.me.uk/mscgen/): Generates MSC's from a plain text input
* [msctexen](https://github.com/unjello/msctexen): mscgen TeX package
* [pgf-umlcd](http://code.google.com/p/pgf-umlcd/): Some LaTeX macros for UML Class Diagrams

The first is a simple CLI program that should be installed to a folder where your LaTeX installation can reach it. If you're on a *nix system that means you should just put it in your $PATH.

The other files are (La)TeX packages for working with MSC's and Z. You should install them in your LaTeX include directory (If you can't find that, you can also put them in the project dir, but please don't add/commit them).