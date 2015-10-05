# 3210notes

Notes for Math3210 at Utah, autumn 2015. They are licensed under the
[Creative Commons Attribution-ShareAlike-4.0 International License][1].

## Building

You first need to install [Git][3] and a [LaTeX distribution][2]. You
should also be on some sort of UNIX-like system, such as Linux, BSD, or
Mac OS X. Windows might work, but I haven't tried it.

If you want to toy around with the graphs, you need [Sage][4] installed.

Running these commands in a terminal will download the source and build
it.

```
git clone git://github.com/pharpend/3210notes.git
cd 3210notes
make
```

A quick note on the targets:

* `make build` will compile the notes into a PDF, called 'notes.pdf'.
* `make clean` will remove the `.tex` compilation directory.
* `make plots` will build all of the graphs. If you don't change the
  graphs, you don't need to run this, because the .png files are stored
  in the repository.
* `make` on its own is equivalent to running `make build && make clean`.

[1]: https://creativecommons.org/licenses/by-sa/4.0/
[2]: https://en.wikibooks.org/wiki/LaTeX/Installation
[3]: https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
[4]: http://doc.sagemath.org/html/en/installation/index.html
