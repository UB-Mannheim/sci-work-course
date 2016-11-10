Windows Installation instructions
=================================

To use LaTeX, you need two pieces of software:

* A LaTeX distribution
* A LaTeX editor

The distribution contains all the tools, libraries, documentation and styles
that you will need for creating documents. A good editor makes writing and invoking
the necessary commands to build a PDF from the LaTeX/BibTeX sources trivial.

We recommend:

* [MikTeX distribution](http://miktex.org/). This is a widely used distribution for Windows. It is comparatively small in size (150 MB) and bundles a package manager to download additional styles on-demand.
* [TeXnicCenter](http://www.texniccenter.org/). This is a very powerful and complete LaTeX authoring environment.

Tip: *Install first the distribution and then the editor.*

MikTeX
------

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

TeXnicCenter
------------

Go to the [TeXnicCenter download page](http://www.texniccenter.org/download/)
and download the installer for your platform (in most cases `64-bit`, for older
machines `32-bit`).

![TeXnicCenter download page](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/windows/texnikcenter-website.png)

- Okay (Administrator, trust)
- next
- I accept, next
- Path is okay, next
- Select components, they are okay, next
- next
- next
- Finish screen: launch TexnicCenter

TeXnicCenter launches and starts some configuration manager:

- Okay
- Next

**This step is important**. This is the reason we installed MikTeX first.

![TeXnicCenter config](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/windows/texnikcenter-configure.png)

Choose **yes**, we want to use TeXnicCenter in combination with MikTeX.

- Next
- Finish
- Close

Test Installation
-----------------

Now, we want to run a test:

- Open TeXnicCenter
- Select the `Open File` menu
- Choose the [LatexExample\testDocument.tex](./LatexExample/testDocument.tex)
  we provide (check that the [references.bib](./LatexExample/references.bib) is also in that directory)
- Switch to *LaTeX => PDF* and build the active document (Press `Ctrl+F7`):

![TeXnicCenter exec](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/windows/texnikcenter.png)

Build the active document two more times.

Have a look at the ouput (Press `F5`). You should see [a PDF](./LatexExample/goal.pdf) without question marks:

![Adobe PDF](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/windows/adobe-pdf.png)

Configure PDF Viewer (optional)
-------------------------------

It is possible that opening the PDF from within TeXnicCenter will now work immediatly
and you are seeing an error message saying that "[DocOpen... Cannot execute the command"
after the application seems to hang for several moments. Then you might have to configure
manually your PDF Viewer in TeXnicCenter
 1. `Build > Define Output Profile...`
 2. Choose `LaTeX => PDF`
 3. Switch to `Viewer` tab
 4. Change the values accordingly
 
|  | Server | Topic | Commend line argument |
| --- | --- | --- | --- |
| Acrobat Reader DC | [acroviewR15](https://tex.stackexchange.com/questions/250472/texniccenter-adobe-reader-dc) | control |
| Acrobat DC | [acroviewA15](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/windows/miktex-config-acrobat.png) | control |
| Acrobat Reader 11 | [acroviewR11](https://tex.stackexchange.com/questions/43864/texniccenter-adobe-acrobat-10) | control |
| Acrobat 10 | acroviewA10 | control |
| PDF X-Change Viewer | | |  `"%bm.pdf"`, `"%bm.pdf"`, `/close "%bm.pdf"` |
