TEX=pdflatex

make:
	cd ./capa && $(TEX) capa.tex
	$(TEX) rel.tex
	rm -rf *.aux *.log 
	cd ./capa && rm -rf *.aux *.log IST_Logo-eps-converted-to.pdf capa.pdf

clean:
	rm -rf rel.pdf
