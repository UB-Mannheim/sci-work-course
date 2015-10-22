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

![Mactex Website Download](https://www.dropbox.com/s/vpdoktndd3219dg/macosx-mactex-download.png?raw=1)

This should open a new page with the mirror used:

![Mactex Website Download 2](https://www.dropbox.com/s/cgm3nc5jerdtq9y/macosx-mactex-download2.png?raw=1)

If the download isn't starting, reload this page until you hit a working mirror.

Once download has finished, open `Downloads` in Finder and click on the
`mactex-20150613.pkg` file.

![Mactex Downloaded](https://www.dropbox.com/s/8js8a3horetbxk4/macosx-mactex-downloaded.png?raw=1)

The default options for the installation are fine.

MacTeX is Free Software, there are no traps lurking in the license screen.

![Mactex Install start](https://www.dropbox.com/s/p06s7zbt2pa55gz/macosx-mactex-install.png?raw=1)

You will need enter your password to complete the installation.

![Mactex Install complete](https://www.dropbox.com/s/5l01wgl8b7arvbm/macosx-mactex-install-complete.png?raw=1)

TeXmaker
--------

Open the [Texmaker homepage](http://www.xm1math.net/texmaker/) in Safari.

![Texmaker Homepage](https://www.dropbox.com/s/z849chwa7rrbv4i/texmaker-homepage.png?raw=1)

Go to the [Download Page](http://www.xm1math.net/texmaker/download.html) and scroll down to `MacOsX` section.

![Texmaker Website Download](https://www.dropbox.com/s/1akx0bn1vd9k1j4/texmaker-download.png?raw=1)

Open `Downloads` in Finder. Open `TexmakerMacosxLion` and **ctrl-click** on `texmaker`, i.e. click while holding
down the `Ctrl`-key.

![Texmaker Download Folder](https://www.dropbox.com/s/lz8c8acy1uuqalq/texmaker-download-folder.png?raw=1)

In the context menu, click on `Open`:

![Finder Ctrl Click](https://www.dropbox.com/s/1nvaer3i1s35vce/texmaker-unsigned-context-menu.png?raw=1)

You should now see this dialog:

![Texmaker Confirm Exec](https://www.dropbox.com/s/nuiica39s4oyjm1/texmaker-macos-confirm-exec.png?raw=1)

If you see the following dialog, you did not **ctrl-click** on `texmaker`.

![Texmaker Exec error](https://www.dropbox.com/s/s3aawrc0t5jcb5s/texmaker-unsigned-error.png?raw=1)

Add the Texmaker icon to the dock so you'll find it later.

Finally, open the Preferences in Texmaker and select the second option for
`Quick Build Command`. This will make Texmaker execute all the necessary steps to
fully rebuild your document when you click the Build button.

![Texmaker settings](https://www.dropbox.com/s/44a4vu1udrg9y5d/macosx-texmaker-settings.png?raw=1)
