# 3210notes

Notes for Math3210 at Utah, autumn 2015. They are licensed under the
[Creative Commons Attribution-ShareAlike-4.0 International License][1].

## Building

You first need to install [Git][3] a [LaTeX distribution][2], and
[Sage][4]. You should also be on some sort of UNIX-like system, such as
Linux, BSD, or Mac OS X. Windows might work, but I haven't tried it.

Running these commands in a terminal will download the source and build
it.

```
git clone git://github.com/pharpend/3210notes.git
cd 3210notes
make plots && make
```

A quick note on the targets:

* `make build` will compile the notes into a PDF, called 'notes.pdf'.
* `make clean` will remove the `.tex` compilation directory.
* `make plots` will build all of the graphs. You only need to run this
  when you change one of the graphs.
* `make` on its own is equivalent to running `make build && make clean`.

## Contact

You can email me at `peter@harpending.org`, or catch me on FreeNode
under the nick `pharpend`.

[1]: https://creativecommons.org/licenses/by-sa/4.0/
[2]: https://en.wikibooks.org/wiki/LaTeX/Installation
[3]: https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
[4]: http://doc.sagemath.org/html/en/installation/index.html
