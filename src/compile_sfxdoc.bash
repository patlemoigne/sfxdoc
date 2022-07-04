pdflatex surfex_scidoc
bibtex chapitre_0_introduction
bibtex chapitre_1_surface_eau
bibtex chapitre_2_surface_urbaine
bibtex chapitre_3_surface_nature
bibtex chapitre_4_modele_cls
bibtex chapitre_5_chimie_aerosol
bibtex chapitre_7_ecoclimap
bibtex chapitre_8_surface_analysis
bibtex surfex_scidoc
pdflatex surfex_scidoc
pdflatex surfex_scidoc
#dvips surfex_scidoc.dvi -o surfex_scidoc.ps
echo "==========================================="
grep -i undefined surfex_scidoc.log
echo "==========================================="
grep -i warning surfex_scidoc.log
echo "==========================================="

#ps2pdf surfex_scidoc.ps
#rm surfex_scidoc.ps

# clean up LaTeX residue...

pdflatex surfex_tecdoc
pdflatex surfex_tecdoc

\rm -f *.log *.aux *.toc *.dvi *.blg *.bbl *.mt* *.maf *.out

ISSUE="3"
VERSION="v8.1"

