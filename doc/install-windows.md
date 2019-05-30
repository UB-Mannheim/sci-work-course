# Windows Installation instructions

To use LaTeX, you need two pieces of software:

* A LaTeX distribution
* A LaTeX editor

The distribution contains all the tools, libraries, documentation and styles
that you will need for creating documents. A good editor makes writing and invoking
the necessary commands to build a PDF from the LaTeX/BibTeX sources trivial.

We recommend:

* [MikTeX distribution](http://miktex.org/). This is a widely used distribution for Windows. It is comparatively small in size (150 MB) and bundles a package manager to download additional styles on-demand.
* [TeXstudio](https://www.texstudio.org/). This is a powerful LaTeX authoring environment which is highly customizable and actively developed as Open Source.

Tip: *Install first the distribution and then the editor.*

## MikTeX

Go to the [MikTeX download page](http://miktex.org) and choose the `Basic
MikTeX` installer for your platform (in most cases `64-bit`, for older machines
`32-bit`).

![MikTeX download page](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/windows/miktex-website.png)

Once downloaded, open the installer and follow the dialog:

- Okay (Administrator, trust)
- I accept
- Anyone
- Path is fine
- next
- next
- start

![MikTeX installation 1](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/windows/miktex-install.png)

This can take a while (up to 5 minutes)… -> next -> Finish screen.

## TeXstudio

Go to the [TeXstudio download page](https://www.texstudio.org/#download)
and download the installer (alternatively you can download a portable version).

Wait for the MikTeX installation to finish first and only afterwards double click on that `.exe` file here and follow the steps to install TeXstudio.

TeXstudio should automatically detect the previously installed MikTeX distribution and configure the commands accordingly. You can check these in TeXstudio under `Options > Configure TeXstudio > Commands`.

## Test Installation

Now, we want to run a test:

- Open TeXstudio
- Select the `Open...` in the `File` menu
- Choose the [LatexExample\testDocument.tex](./LatexExample/testDocument.tex)
  we provide (check that the [references.bib](./LatexExample/references.bib) is also in that directory)
- Click the first green arrow button to build and view the active document (Press `F5`):

![TeXnicCenter exec](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/windows/texstudio-build-and-view.jpg)

On the right you should see [a PDF](./LatexExample/goal.pdf) without question marks.
