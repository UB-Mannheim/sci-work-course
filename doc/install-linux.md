Linux TeX Installation instructions
===================================

To use LaTeX, you need two pieces of software:

* A LaTeX distribution
* A LaTeX editor

The distribution contains all the tools, libraries, documentation and styles
that you will need for creating documents. A good editor makes writing and invoking
the necessary commands to build a PDF from the LaTeX/BibTeX sources trivial.

We recommend:

* [TeXLive Distribution](https://www.tug.org/texlive/). It is rather large (~2.9 GiB) but complete and up-to-date.
* [Texmaker](http://www.xm1math.net/texmaker/). Free software, cross-platform, easy to configure yet powerful.

Installation via Command line
-----------------------------

### Ubuntu / Debian

In a terminal:

```
sudo apt-get install texlive-core
sudo apt-get install texmaker
```
TexLive
------------------
### Installation via Synaptic Package Manager

If you run a Ubuntu or Xubuntu system, you can install TexLive with Synaptic Package Manager. Open the Synaptic Package Manager and search for `texlive`.

![TexLive Installation via Synaptic](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/linux/linux-texlive-synaptic-01.png)

Klick on the checkbox next to `texlive` and select `Marc for installation`. Then klick on the `apply` button above. A new window appears. Klick again on `Apply` to start the installation.

![TexLive Installation via Synaptic](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/linux/linux-texlive-synaptic-02.png)

### Manual download and installation

We recommend to install TexLive via command line or Synaptic Package Manager as described above. If there should occur any problems with that, you still can do it the hard way:

Go to the [TexLive Distribution](https://www.tug.org/texlive/) website in any browser and click on the [download](https://www.tug.org/texlive/acquire-netinstall.html) link in the first item:

![TexLive Website Download](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/linux/linux-texlive-download-01.png)

This should open a new page with the available download options:

![TexLive Website Download 2](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/linux/linux-texlive-download-02.png)

Klick on the link for the archive file for linux `install-tl-unx.tar.gz`(3.3mb) to download the package.

If the download isn't starting, reload this page until you hit a working mirror.

Once download has finished, open your `downloads` folder and unpack `install-tl-unx.tar.gz` into your `home` directory.

![TexLive archive unpacking](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/linux/linux-texlive-unpack.png)

Open your `command line console` and change to the new subdirectory where you can find the file `install-tl`. Run the `install-tl` script by typing: `./install-tl`

![TexLive Installation](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/linux/linux-texlive-install-01.png)

Next you are asked to type `i` and enter for starting installation to hard disk. The process can take some minutes.

![TexLive Installation 2](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/linux/linux-texlive-install-02.png)

TexMaker
---------
### Installation via Synaptic Package Manager

If you run a Ubuntu or Xubuntu system, you can install TexMaker with Synaptic Package Manager. Open the Synaptic Package Manager and search for `texmaker`.

![TexMaker Installation via Synaptic](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/linux/linux-texmaker-synaptic-01.png)

Klick on the checkbox next to `texmaker` and select `Marc for installation`. Then klick on the `apply` button above. A new window appears. Klick again on `Apply` to start the installation.

![TexMaker Installation via Synaptic](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/linux/linux-texmaker-synaptic-02.png)

Finally, open TexMaker and then the Preferences through `Options` --> `Configure TexMaker` and click on the second tab `Quick Build`. Select the second option for `Quick Build Command`. This will make TexMaker execute all the necessary steps to fully rebuild your document when you click the Build button.

![Texmaker settings](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/linux/linux-texmaker-config.png)

###Installation via manual Download

Open the [Texmaker homepage](http://www.xm1math.net/texmaker/) in your browser.

![Texmaker Homepage](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/linux/texmaker-homepage.png)

Go to the [Download Page](http://www.xm1math.net/texmaker/download.html) and scroll down to `Linux` section.

![Texmaker Website Download](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/linux/linux-texmaker-download.png)

Choose the right download file for your operating system and klick on it. For Ubuntu and Debian users, the system should automatically offer to open the file with Ubuntu Software Center.

![Texmaker Website Download 2](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/linux/linux-texmaker-download-02.png)

Open the file with your Software Center and in there click on `install`. You will have to authenticate yourself by entering your password.

![Texmaker in Ubuntu Software Center](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/linux/linux-software-center-01.png)

TexMaker will be installed.

Finally, open TexMaker and then the Preferences through `Options` --> `Configure TexMaker` and click on the second tab `Quick Build`. Select the second option for `Quick Build Command`. This will make TexMaker execute all the necessary steps to fully rebuild your document when you click the Build button.

![Texmaker settings](https://raw.githubusercontent.com/UB-Mannheim/ubma-screenshots/master/sci-work/linux/linux-texmaker-config.png)
