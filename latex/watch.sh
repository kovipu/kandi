latexmk \
  -pvc \
  -pdf \
  -shell-escape \
  -e '$pdflatex=q/xelatex %O -interaction=nonstopmode %S/' \
  -output-directory=../dist/ \
  thesis.tex