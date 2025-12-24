SRC = $(wildcard docs/*.md)
OUT_DIR = output
DOCX = $(OUT_DIR)/Document.docx
REF = reference.docx

all: docx

docx:
	if not exist $(OUT_DIR) mkdir $(OUT_DIR)
	pandoc $(SRC) \
		--from markdown \
		-d default.yaml \
		--toc \
		--resource-path=docs;pictures \
		--filter pandoc-crossref \
		--citeproc \
		--reference-doc=$(REF) \
		--output=$(DOCX)

clean:
	rmdir /s /q output
