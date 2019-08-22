Linux LaTeX Installation instructions
===================================

## Table of Contents

* [Introduction](#introduction)
* [Installation](#installation)
  * [Debian / Ubuntu](#debian--ubuntu)
  * [Arch Linux](#arch-linux)
* [Verify Installation](#verify-installation)

## Introduction

To use LaTeX, you need two pieces of software:

* A LaTeX distribution
* A LaTeX editor

The distribution contains all the tools, libraries, documentation and styles
that you will need for creating documents. A good editor makes writing and invoking
the necessary commands to build a PDF from the LaTeX/BibTeX sources trivial.

We recommend:

* [TeXLive Distribution](https://www.tug.org/texlive/). It is rather large (~2.9 GiB) but complete and up-to-date.
* [TeXstudio](https://www.texstudio.org/). Free software, cross-platform, easy to configure yet powerful.

## Installation

### Debian / Ubuntu

Use these instructions if you are running a Debian-based Linux distro such as

* Debian
* Ubuntu / Xubuntu / Kubuntu
* Mint

#### apt-get

Open a terminal such as `gnome-terminal` and enter this command:

```
sudo apt-get install texlive texstudio
```

#### Synaptic Package Manager

Open the Synaptic Package Manager and search for `texlive`.

![TexLive Installation via Synaptic](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/linux/linux-texlive-synaptic-01.png)

Click on the checkbox next to `texlive` and select `Mark for installation`.

Next, search for `texstudio`:

![TeXstudio Installation via Synaptic](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/linux/linux-texstudio-synaptic-01.png)

Click on the checkbox next to `texstudio` and select `Mark for installation`.

Click on the `Apply` button in the toolbar. A confirmation window pops up.
Click again on `Apply` to start the installation.


### Arch Linux

In a terminal:

```
sudo pacman -S texlive texstudio
```

## Verify Installation

Create a new folder and download the files
[testDocument.tex](https://raw.githubusercontent.com/UB-Mannheim/sci-work-course/master/doc/LatexExample/testDocument.tex)
and
[references.bib](https://raw.githubusercontent.com/UB-Mannheim/sci-work-course/master/doc/LatexExample/references.bib)
(right click and `Save link target`).

Open the `testDocument.tex` file in TeXstudio.

Build & view the Document by pressing `F5` or click the left green arrow in the
toolbar.

The document created should match [goal.pdf](https://raw.githubusercontent.com/UB-Mannheim/sci-work-course/master/doc/LatexExample/goal.pdf).
