echo "Printing Assignment..."

mkdir -p build

latexmk -C

latexmk -pdf -aux-directory=build -output-directory=build assignment.tex