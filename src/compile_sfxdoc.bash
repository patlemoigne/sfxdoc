# compilation of the scientific documentation
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

# compilation of the technical documentation
pdflatex surfex_tecdoc
pdflatex surfex_tecdoc

# check undefined references and possible warnings
grep -i undefined surfex_scidoc.log  > scidoc_undefined.txt 2>&1
grep -i warning surfex_scidoc.log  > scidoc_warning.txt 2>&1

# clean up directory
\rm -f *.log *.aux *.toc *.dvi *.blg *.bbl *.mt* *.maf *.out
