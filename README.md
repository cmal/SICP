# Intro

Ppts, notes, references and answers to exercises,
of the second version of [Structure and Interpretation of Computer Programs](https://mitpress.mit.edu/sicp/) (SICP).

And also some Chinese notes and ppts.

## MIT-Scheme

### MIT-Scheme Installation

For Mac/Homebrew users:
```
$ brew install mit-scheme
```

### Basic Usage of MIT-Scheme

MIT-Scheme provides some basic editing key bindings of GNU Emacs.

The following operations may be useful:
```scheme
(cd "/some/path")
(load "/path/to/filename.scm")
(disk-save "desktop-session1")
(disk-restore "desktop-session1")
```

### MIT-Scheme Documentation
https://www.gnu.org/software/mit-scheme/documentation/mit-scheme-ref/

### Note to MIT-Scheme users

If you use MIT-Scheme, the exercises answers cannot be directly run in interpreter, you must remove the `#lang` pragmas from the source code.

Or you may want to use:

## Racket

If you do not want to use MIT-Scheme, you can use Racket alternatively.
Goto https://racket-lang.org/download/ ,
download the newest version of Racket and install.

For SICP, using Racket gives you an option for testing `normal order` evaluation using `#lang lazy`, which is not provided in the `MIT-Scheme` interpreter.

### Use Racket to interpret sicp version Scheme

Please refer to http://docs.racket-lang.org/sicp-manual/index.html .


### Racket for Emacs notes

Emacs has [Racket mode](https://github.com/greghendershott/racket-mode/blob/master/Reference.md).

But I do not know how to use Racket mode to correctly interpret the `#lang` pragma yet. If you have any ideas, not hesitate to create an issue for this.


## Notes for Chinese readers

### Chinese Refs By PKU

http://www.math.pku.edu.cn/teachers/qiuzy/progtech/

