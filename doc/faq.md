# Frequently Asked Questions

<!-- Refresh TOC with 'shinclude -c xml -i faq.md' -->

<!-- BEGIN-MARKDOWN-TOC -->
* [Is there a Wikibook on LaTeX?](#is-there-a-wikibook-on-latex)
* [How can I add the bibliography section to the table of contents?](#how-can-i-add-the-bibliography-section-to-the-table-of-contents)
* [I don't have any output profiles configured in TeXnicCenter](#i-don-t-have-any-output-profiles-configured-in-texniccenter)
* [TeXnicCenter gives an error "Cannot execute command"](#texniccenter-gives-an-error--cannot-execute-command-)
* [How can I find LaTeX commands for symbols by drawing them?](#how-can-i-find-latex-commands-for-symbols-by-drawing-them)
* [What is the difference between \centering and the `center` environment](#what-is-the-difference-between--centering-and-the-center-environment)
* [How do I specify multiple authors in BibTeX?](#how-do-i-specify-multiple-authors-in-bibtex)
* [How can I change the font size?](#how-can-i-change-the-font-size)

<!-- END-MARKDOWN-TOC -->

## Is there a Wikibook on LaTeX?

[There certainly is](http://en.wikibooks.org/wiki/LaTeX)

## How can I add the bibliography section to the table of contents?

If you want to include a line for the bibliography in your table of content,
then you can try `\addcontentsline` (see [here](http://www.weinelt.de/latex/addcontentsline.html)).

## I don't have any output profiles configured in TeXnicCenter

If your MikTeX installation was don afterwards or is in some special order
then the automatic detection step in TeXnicCenter might fail and there is no
output profile (e.g. LaTeX => PDF) but this list is just blank.

Try then:

1. Go to `Build` then `Define Output Profile` and start the `Wizard...` again.
1. Skip the optional things like postscript and see if this already works.
1. If the MikTeX path cannot be found by this wizard, then you are asked to enter that
by hand. This can be the case when you have installed MikTeX not for all users but
only for the current user. Start to look for the `MiKTeX/2.9/miktex/bin` directory
in the folder `C:\Users\{YOUR_USER_NAME}\AppData\Roaming`, copy this path and try again.

## TeXnicCenter gives an error "Cannot execute command"

If you are getting an error message "Cannot execute command" from TeXnicCenter
after trying to view your pdf file with Acrobat, adjust the output profile
settings, see how to  [configure PDF Viewer in the Windows installation guide](https://github.com/UB-Mannheim/sci-work-course/blob/master/doc/install-windows.md#configure-pdf-viewer-optional)

## Texmaker gives "command not found" errors

Set up the absolute paths to the tools.

## How can I find LaTeX commands for symbols by drawing them?

Try [Detexify](http://detexify.kirelabs.org/classify.html).

## What is the difference between \centering and the `center` environment

See [Difference between `\centering` and `\begin{center}...\end{center}`](http://texblog.net/latex-archive/layout/center-centering/)

## How do I specify multiple authors in BibTeX?

Different authors have to be seperated by "and" in the author-field. A comma
will be used to seperate last name and first name. A semicolon will be just
looked as any text. Moreover, this often lead to errors like "too many comas".

## How can I change the font size?

> The standard classes, article, report and book support 3 different font sizes, 10pt, 11pt, 12pt (by default 10pt)." 

(see [here](http://texblog.org/2012/08/29/changing-the-font-size-in-latex/) for a nice explanation).
