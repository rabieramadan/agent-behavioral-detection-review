# LaTeX Package - Harm Implies Action Deviation

Submission-ready LaTeX source for the paper, with figures in `figures/`.

## Structure
```
main.tex          IEEEtran journal source (pdfLaTeX)
IEEEtran.cls      journal class file
figures/          all 8 figures (fig1..fig8)
main.pdf          reference compiled output (16 pages)
README.txt        original submission notes
```

## Build
```
pdflatex main.tex
pdflatex main.tex   # second pass resolves cross-references
```
The preamble sets \graphicspath{{figures/}}, so figures are found
automatically. No bibtex step is needed (the bibliography is an inline
thebibliography environment).
