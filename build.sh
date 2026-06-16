#!/bin/bash
set -e

echo "Building Russian CV"
pdflatex -interaction=nonstopmode resume_ru.tex
echo "Building English CV"
pdflatex -interaction=nonstopmode resume_eng.tex
echo "Ready: resume_ru.pdf and resume_eng.pdf"