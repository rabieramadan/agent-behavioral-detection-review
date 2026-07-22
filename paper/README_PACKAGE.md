# LaTeX Package - Harm Implies Action Deviation (references corrected)

Submission-ready source, figures in `figures/`, compiles with pdfLaTeX.

## Build
```
pdflatex main.tex
pdflatex main.tex
```
`\graphicspath{{figures/}}` resolves the figures; bibliography is inline `thebibliography`.

## Reference corrections applied
- Author lists expanded to full names for all works with <=6 authors (IEEE style); `et al.` kept only for r1, r5, r10, r12, r16, r19, r23, r31 (7+ authors, verified).
- Published versions substituted: r3 -> ACM TOSEM 2026; r18 -> IEEE TIFS 2026; r26 -> IEEE Access 2026.
- Full titles and DOIs added; all bibliography TODO placeholders resolved.
- r26 author order corrected (Chhabra first).
