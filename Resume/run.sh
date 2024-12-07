echo "Shortlisting Resume..."

mkdir -p build

latexmk -C

latexmk -pdf -aux-directory=build -output-directory=build resume.tex