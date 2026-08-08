CV_SOURCE := cv/CV_Daniel.tex
CV_OUTPUT := CV_Daniel.pdf
CV_BUILD_DIR := build/cv
TECTONIC ?= tectonic

.PHONY: cv clean

cv:
	mkdir -p $(CV_BUILD_DIR)
	$(TECTONIC) --keep-logs --outdir $(CV_BUILD_DIR) $(CV_SOURCE)
	cp $(CV_BUILD_DIR)/CV_Daniel.pdf $(CV_OUTPUT)

clean:
	rm -rf build
