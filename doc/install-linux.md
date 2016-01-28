Linux LaTeX Installation instructions
===================================

## Table of Contents

* [Introduction](#introduction)
* [Installation](#installation)
  * [Debian / Ubuntu](#debian--ubuntu)
  * [Arch Linux](#arch-linux)
* [Configure Texmaker](#configure-texmaker)
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
* [Texmaker](http://www.xm1math.net/texmaker/). Free software, cross-platform, easy to configure yet powerful.

## Installation

### Debian / Ubuntu

Use these instructions if you are running a Debian-based Linux distro such as

* Debian
* Ubuntu / Xubuntu / Kubuntu
* Mint

#### apt-get

Open a terminal such as `gnome-terminal` and enter this command:

```
sudo apt-get install texlive texmaker
```

#### Synaptic Package Manager

Open the Synaptic Package Manager and search for `texlive`.

![TexLive Installation via Synaptic](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/linux/linux-texlive-synaptic-01.png)

Click on the checkbox next to `texlive` and select `Mark for installation`.

Next, search for `texmaker`:

![TexMaker Installation via Synaptic](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/linux/linux-texmaker-synaptic-01.png)

Click on the checkbox next to `texmaker` and select `Mark for installation`.

Click on the `Apply` button in the toolbar. A confirmation window pops up.
Click again on `Apply` to start the installation.


### Arch Linux

In a terminal:

```
sudo pacman -S texlive texmaker
```

## Configure Texmaker

Start Texmaker and open the Preferences window (`Options` > `Configure Texmaker`).

Select the second tab (*Quick Build*).

Select the second option for *Quick Build Command* (`PdfLaTeX + Bib(La)tex + PdfLaTeX (x2) + View PDF`)

This will make TexMaker execute all the necessary steps to fully rebuild your
document when you click the Build button:

![Texmaker settings](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/linux/linux-texmaker-config.png)

## Verify Installation

Create a new folder and download the files
[testDocument.tex](https://raw.githubusercontent.com/UB-Mannheim/sci-work-course/master/doc/LatexExample/testDocument.tex)
and
[references.bib](https://raw.githubusercontent.com/UB-Mannheim/sci-work-course/master/doc/LatexExample/references.bib)
(right click and `Save link target`).

Open the `testDocument.tex` file in Texmaker.

Compile the Document by pressing `F1` or click the left blue arrow on the
toolbar. Make sure **Quick Build** is selected in the dropdown list.

The document created should match [goal.pdf](https://raw.githubusercontent.com/UB-Mannheim/sci-work-course/master/doc/LatexExample/goal.pdf).

If it does not, make sure you [configured Texmaker](#configure-texmaker)
correctly and have texlive [installed](#installation).
