# We generate ps from pdf now in order to depend only on pdfLaTeX!
# %.ps  : %.dvi
#        dvips -D 600 -o $@ $<

%.html  :
	tth -a -e2 -w2 wolfram-fruit


%.ps  : %.pdf
	acroread -toPostScript -binary $<

%.dvi : %.tex
	latex $< && latex $<

%.pdf : %.tex
	rm -f $*.aux && pdflatex $< && pdflatex $<

%.tex : %.pd
	pdweave $<

TARGET = wolfram-fruit.pdf

all: $(TARGET)

view:
#	xdvi -paper usr $(TARGET)
	acroread $(TARGET)
