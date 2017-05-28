latex FLDiffusiveClosure.tex 
bibtex FLDiffusiveClosure.aux 
latex FLDiffusiveClosure.tex 
latex FLDiffusiveClosure.tex
dvips -t letter FLDiffusiveClosure.dvi -o FLDiffusiveClosure.ps
ps2pdf -sPAPERSIZE#letter FLDiffusiveClosure.ps FLDiffusiveClosure.pdf
del *.ps *.bbl *.out *.log *.blg
