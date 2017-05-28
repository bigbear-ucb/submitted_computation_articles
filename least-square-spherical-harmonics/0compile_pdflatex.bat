pdflatex FLDiffusiveClosure.tex 
bibtex FLDiffusiveClosure.aux 
pdflatex FLDiffusiveClosure.tex 
pdflatex FLDiffusiveClosure.tex
dvips -t letter FLDiffusiveClosure.dvi -o FLDiffusiveClosure.ps
ps2pdf -sPAPERSIZE#letter FLDiffusiveClosure.ps FLDiffusiveClosure.pdf
del *.ps *.bbl *.out *.log *.blg
