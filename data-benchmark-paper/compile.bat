latex WZhengFreeGasPaper3.tex 
bibtex WZhengFreeGasPaper3.aux 
latex WZhengFreeGasPaper3.tex 
latex WZhengFreeGasPaper3.tex
dvips -t letter WZhengFreeGasPaper3.dvi -o WZhengFreeGasPaper3.ps
ps2pdf -sPAPERSIZE#letter WZhengFreeGasPaper3.ps WZhengFreeGasPaper3.pdf
del *.aux *.out *.log *.spl *.bbl *.blg *.dvi *.ps ._*
