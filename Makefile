OUT_DIR = dist
INPUT_DIR = latex
INPUT_FILE = thesis

default:
	@echo "Usage:\n\
	 'make build' - build latex to pdf\n\
	 'make watch' - watch for changes in source and rebuild the document\n\
	 'make clean' - delete all compiled resources\n\
	"

build: clean
	cd ${INPUT_DIR} && \
	latexmk \
		-pdf \
		-shell-escape \
		-e '$$pdflatex=q/xelatex %O \
		-interaction=nonstopmode %S/' \
		-output-directory=../${OUT_DIR} \
		${INPUT_FILE}.tex \
		; true

watch: clean
	cd ${INPUT_DIR} && \
	latexmk \
		-pvc \
		-pdf \
		-shell-escape \
		-e '$$pdflatex=q/xelatex %O \
		-interaction=nonstopmode %S/' \
		-output-directory=../${OUT_DIR} \
		${INPUT_FILE}.tex

clean:
	rm -rf ${OUT_DIR}/*

.PHONY: build watch clean
