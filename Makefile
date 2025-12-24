SRC = $(wildcard docs/*.md)
DOCX = Document.docx
REF = reference.docx

all: docx

docx:
	pandoc $(SRC) \
		--from markdown \
		-d default.yaml \
		--toc \
		--resource-path=docs:pictures \
		--filter pandoc-crossref \
		--citeproc \
		--reference-doc=$(REF) \
		--output=$(DOCX)

clean:
	del /q $(DOCX)