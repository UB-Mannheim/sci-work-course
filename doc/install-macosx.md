Mac OSX TeX Installation instructions
=====================================

## Table of Contents

* [Introduction](#introduction)
* [Installation](#installation)
  * [Homebrew](#homebrew)
  * [Downloaded packages](#downloaded-packages)
    * [MacTeX](#mactex)
    * [TeXstudio](#texstudio)
* [Verify Installation](#verify-installation)


## Introduction

To use LaTeX, you need two pieces of software:

* A LaTeX distribution
* A LaTeX editor

The distribution contains all the tools, libraries, documentation and styles
that you will need for creating documents. A good editor makes writing and invoking
the necessary commands to build a PDF from the LaTeX/BibTeX sources trivial.

We recommend:

* [MacTeX Distribution](https://tug.org/mactex/). It is rather large (~2.9 GiB) but complete and up-to-date.
* [TeXstudio](https://www.texstudio.org/). Free software, cross-platform, easy to configure yet powerful.

## Installation

### homebrew

If you have [Homebrew]() installed (which we highly recommend), you can install
both MacTeX and TeXstudio from the command line. Open a terminal (search
`terminal` in Launchpad) and execute these two commands:

```
brew cask install mactex
brew cask install texstudio
```

### Downloaded packages

#### MacTeX

Go to the [MacTeX Distribution](https://tug.org/mactex/) website in Safari and click download:

![Mactex Website Download](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/macosx/macosx-mactex-download.png)

This should open a new page with the mirror used:

![Mactex Website Download 2](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/macosx/macosx-mactex-download2.png)

If the download isn't starting, reload this page until you hit a working mirror.

Once download has finished, open `Downloads` in Finder and click on the
`mactex-20150613.pkg` file.

![Mactex Downloaded](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/macosx/macosx-mactex-downloaded.png)

The default options for the installation are fine.

MacTeX is Free Software, there are no traps lurking in the license screen.

![Mactex Install start](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/macosx/macosx-mactex-install.png)

You will need enter your password to complete the installation.

![Mactex Install complete](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/macosx/macosx-mactex-install-complete.png)

#### TeXstudio

Open the [TeXstudio homepage](https://www.texstudio.org/) in your favorite web browser.

![TeXstudio Homepage](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/macosx/texstudio-homepage.png)

Click the Download button to download the installation file.

Open `Downloads` in Finder. Open `texstudio-VERSION-osx.dmg` and drag `texstudio.app` to the Applications folder in Finder (you might have to open a new Finder window via the menu or using `cmd + N`).

Add the TeXstudio icon to the dock so you'll find it later.

## Verify Installation

Create a new folder and download the files
[testDocument.tex](https://raw.githubusercontent.com/UB-Mannheim/sci-work-course/master/doc/LatexExample/testDocument.tex)
and
[references.bib](https://raw.githubusercontent.com/UB-Mannheim/sci-work-course/master/doc/LatexExample/references.bib)
(right click and `Save link target`).

Open the `testDocument.tex` file in TeXstudio.

Compile the Document by pressing `F5` or click the left green arrow on the
toolbar. Make sure **Quick Build** is selected in the dropdown list.

The document created should match [goal.pdf](https://raw.githubusercontent.com/UB-Mannheim/sci-work-course/master/doc/LatexExample/goal.pdf).
