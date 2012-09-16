2IW05-project
=============

Software specification project

Dependencies
------------

* [msc.sty](http://www.win.tue.nl/~sjouke/misc/mscpackage/msc.sty): LaTeX package for drawing MSCs
* [pgf-umlcd](http://code.google.com/p/pgf-umlcd/): Some LaTeX macros for UML Class Diagrams

The first is a simple CLI program that should be installed to a folder where your LaTeX installation can reach it. If you're on a *nix system that means you should just put it in your $PATH.

The other files are (La)TeX packages for working with MSC's and Z. You should install them in your LaTeX include directory (If you can't find that, you can also put them in the project dir, but please don't add/commit them).