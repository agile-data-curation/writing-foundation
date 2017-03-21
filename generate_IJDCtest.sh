#!/usr/bin/env bash


echo "===start of run =================="

pandoc -s -S \
--normalize \
--template=ijdc_pandoc.latex \
-o ijdc_test.tex ijdc_template.md

echo "===end of run =================="
echo "===start of run =================="

pandoc -s -S \
--filter pandoc-citeproc \
--normalize \
--template=ijdc_pandoc.latex \
-o ijdc_test.pdf ijdc_template.md

echo "===end of run =================="
echo -en "\n\n\n"
