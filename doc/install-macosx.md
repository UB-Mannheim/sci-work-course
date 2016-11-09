Mac OSX TeX Installation instructions
=====================================

## Table of Contents

* [Introduction](#introduction)
* [Installation](#installation)
  * [Homebrew](#homebrew)
  * [Downloaded packages](#downloaded-packages)
    * [MacTeX](#mactex)
    * [TeXmaker](#texmaker)
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

* [MacTeX Distribution](https://tug.org/mactex/). It is rather large (~2.9 GiB) but complete and up-to-date.
* [Texmaker](http://www.xm1math.net/texmaker/). Free software, cross-platform, easy to configure yet powerful.

## Installation

### homebrew

If you have [Homebrew]() installed (which we highly recommend), you can install
both MacTeX and Texmaker from the command line. Open a terminal (search
`terminal` in Launchpad) and execute these two commands:

```
brew install mactex
brew install texmaker
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

#### TeXmaker

Open the [Texmaker homepage](http://www.xm1math.net/texmaker/) in Safari.

![Texmaker Homepage](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/macosx/texmaker-homepage.png)

Go to the [Download Page](http://www.xm1math.net/texmaker/download.html) and scroll down to `MacOsX` section.

![Texmaker Website Download](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/macosx/texmaker-download.png)

Open `Downloads` in Finder. Open `TexmakerMacosxLion` and **ctrl-click** on `texmaker`, i.e. click while holding
down the `Ctrl`-key.

![Texmaker Download Folder](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/macosx/texmaker-download-folder.png)

In the context menu, click on `Open`:

![Finder Ctrl Click](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/macosx/texmaker-unsigned-context-menu.png)

You should now see this dialog:

![Texmaker Confirm Exec](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/macosx/texmaker-macos-confirm-exec.png)

If you see the following dialog, you did not **ctrl-click** on `texmaker`.

![Texmaker Exec error](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/macosx/texmaker-unsigned-error.png)

Add the Texmaker icon to the dock so you'll find it later.

## Configure Texmaker

Start Texmaker and open the Preferences window (in the menubar click on **texmaker**` > `Preferences`).

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
