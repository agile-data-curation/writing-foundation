#!/usr/bin/env bash

pandoc -s -S \
--filter pandoc-citeproc \
--normalize \
--template=ijdc_pandoc.latex \
-f markdown \
-o AgileCuration-Foundation.pdf AgileCuration-Foundation.txt

pandoc -s -S \
--normalize \
--biblatex \
--template=ijdc_pandoc.latex \
-f markdown -t latex \
-o AgileCuration-Foundation.tex AgileCuration-Foundation.txt


