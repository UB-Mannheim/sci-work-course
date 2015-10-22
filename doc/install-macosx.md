Mac OSX TeX Installation instructions
=====================================

To use LaTeX, you need two pieces of software:

* A LaTeX distribution
* A LaTeX editor

The distribution contains all the tools, libraries, documentation and styles
that you will need for creating documents. A good editor makes writing and invoking
the necessary commands to build a PDF from the LaTeX/BibTeX sources trivial.

We recommend:

* [MacTeX Distribution](https://tug.org/mactex/). It is rather large (~2.9 GiB) but complete and up-to-date.
* [Texmaker](http://www.xm1math.net/texmaker/). Free software, cross-platform, easy to configure yet powerful.

Installation via homebrew (advanced users)
------------------------------------------

With [Homebrew]()
In a terminal:

```
brew install mactex
brew install texmaker
```


MacTeX
------

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

TeXmaker
--------

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

Finally, open the Preferences in Texmaker and select the second option for
`Quick Build Command`. This will make Texmaker execute all the necessary steps to
fully rebuild your document when you click the Build button.

![Texmaker settings](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/macosx/macosx-texmaker-settings.png)
