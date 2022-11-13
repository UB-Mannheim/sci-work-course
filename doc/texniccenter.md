# Installing TeXnicCenter (Windows)

## Preamble

For several years we recommended to use TeXnicCenter as a LaTeX editor on Windows, but switched now to TeXstudio see our [Windows Installation instructions](install-windows.md). This page here still contains the installation instruction for TeXnicCenter, also we don't use them anymore.

## Install TexnicCenter

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

## Test Installation

Now, we want to run a test:

- Open TeXnicCenter
- Select the `Open File` menu
- Choose the [LatexExample\testDocument.tex](./LatexExample/testDocument.tex)
  we provide (check that the [references.bib](./LatexExample/references.bib) is also in that directory)
- Switch to *LaTeX => PDF* and build the active document (Press `Ctrl+F7`):

![TeXnicCenter exec](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/windows/texnikcenter.png)

Build the active document two more times.

Have a look at the output (Press `F5`). You should see [a PDF](./LatexExample/goal.pdf) without question marks:

![Adobe PDF](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/windows/adobe-pdf.png)

## Configure PDF Viewer (optional)

It is possible that opening the PDF from within TeXnicCenter will now work immediately
and you are seeing an error message saying that "[DocOpen... Cannot execute the command"
after the application seems to hang for several moments. Then you might have to configure
manually your PDF Viewer in TeXnicCenter
 1. `Build > Define Output Profile...`
 2. Choose `LaTeX => PDF`
 3. Switch to `Viewer` tab
 4. Change the values accordingly
 
|  | Server | Topic | Command line arguments |
| --- | --- | --- | --- |
| Acrobat Reader DC (since October 2018) | acroviewR19 | control |
| Acrobat Reader DC (since January 2018) | [acroviewR18](https://tex.stackexchange.com/questions/250472/texniccenter-adobe-reader-dc/364613#364613) | control |
| Acrobat Reader DC (since July 2017) | [acroviewR17](https://tex.stackexchange.com/questions/250472/texniccenter-adobe-reader-dc/364613#364613) | control |
| Acrobat Reader DC | [acroviewR15](https://tex.stackexchange.com/questions/250472/texniccenter-adobe-reader-dc) | control |
| Acrobat DC | [acroviewA15](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/windows/texniccenter-config-acrobat.png) | control |
| Acrobat Reader 11 | [acroviewR11](https://tex.stackexchange.com/questions/43864/texniccenter-adobe-acrobat-10) | control |
| Acrobat 10 | acroviewA10 | control |
| PDF X-Change Viewer | | |  `"%bm.pdf"`, `"%bm.pdf"`, `/close "%bm.pdf"` |

### Example Configuration for Acrobat Reader DC:

<img src="https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/windows/texniccenter-configure-acrobat-dc.png" width=50%/>
