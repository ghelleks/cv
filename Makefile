BASENAME=gh-resume
TEMPLATE=-t gh-template.html

all: pdf html tex

tex:
	pandoc -o $(BASENAME).tex $(BASENAME).md

html:
	md2resume $(TEMPLATE) $(BASENAME).md

pdf:
	md2resume $(TEMPLATE) --pdf $(BASENAME).md

clean:
	rm gh-resume.tex
	rm gh-resume.html
	rm gh-resume.pdf
