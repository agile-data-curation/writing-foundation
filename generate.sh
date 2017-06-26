#!/usr/bin/env bash

pandoc -s -S \
--filter pandoc-citeproc \
--normalize \
-f markdown \
--latex-engine=xelatex \
-o AgileCuration-Foundation_Plain.pdf AgileCuration-Foundation.txt

pandoc -s -S \
--filter pandoc-citeproc \
--normalize \
--template=ijdc_pandoc.latex \
-f markdown \
--latex-engine=xelatex \
-o AgileCuration-Foundation.pdf AgileCuration-Foundation.txt

pandoc -s -S \
--normalize \
--biblatex \
--template=ijdc_pandoc.latex \
-f markdown -t latex \
-o AgileCuration-Foundation.tex AgileCuration-Foundation.txt


