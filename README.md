#SICP

# Intro
Answers and notes of the second version of [Structure and Interpretation of Computer Programs](https://mitpress.mit.edu/sicp/) (SICP).

This includes ppts, notes, refs, and answers of practices.

And also some Chinese notes and ppts.

## MIT-Scheme

### MIT-Scheme Installation

For mac users:
```
$ brew install mit-scheme
```
### MIT-Scheme Documentation
https://www.gnu.org/software/mit-scheme/documentation/mit-scheme-ref/

### Chinese Refs By PKU
http://www.math.pku.edu.cn/teachers/qiuzy/progtech/

## Basic Usage of MIT-Scheme

editing operations just as GNU Emacs

The following operations may be useful:
```
(cd "/some/path")
(load "/path/to/filename.scm")
(disk-save "desktop-session1")
(disk-restore "desktop-session1")
```

## Racket

If you do not want to use MIT-Scheme, you can use Racket alternatively.
Goto https://racket-lang.org/download/ ,
download the newest version of Racket and install.

### use Racket to interpret sicp version Scheme

Please refer to http://docs.racket-lang.org/sicp-manual/index.html .


### Racket for Emacs notes

Emacs has [Racket mode](https://github.com/greghendershott/racket-mode/blob/master/Reference.md).

But I do not know how to use Racket mode to correctly interpret the `#lang` pragma yet. If you have any ideas, not hesitate to create an issue for this.
