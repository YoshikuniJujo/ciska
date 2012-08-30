#!/bin/sh

xsltproc basic_plain.xsl kamprije.xml | runhaskell remove_lines.hs > kamprije.txt
xsltproc text_plain.xsl kamprije.xml | runhaskell to_one_line.hs > kamprije_text.txt
xsltproc basic.xsl kamprije.xml > kamprije.html
xsltproc with_note.xsl kamprije.xml > kamprije_with_note.html
xsltproc text.xsl kamprije.xml > kamprije_text.html
