#!/bin/bash

cd src/chapters
for D in *; do
    if [[ ${D} =~ [0-9][0-9] ]]; then
        cd ${D}
        if [ -f "chapter${D}.lytex" ]; then
            # preprocessing cleanup
            [ -d precomp ] && rm -rf precomp
            
            # preprocess lilypond
            mkdir precomp && lilypond-book --pdf --output=precomp "chapter${D}.lytex"
        else
            # compilation files cleanup
            [ -f "chapter${D}.aux" ] && rm "chapter${D}.aux"
            [ -f "chapter${D}.synctex.gz" ] && rm "chapter${D}.synctex.gz"

            # auxiliary files
            [ -f "chapter${D}.log" ] && rm "chapter${D}.log"
            [ -f "chapter${D}.out" ] && rm "chapter${D}.out"
            [ -f "chapter${D}.synctex(busy)" ] && rm "chapter${D}.synctex(busy)"
            
            # generated output
            [ -f "chapter${D}.pdf" ] && rm "chapter${D}.pdf"
        fi
        cd ..
    fi
done

# compile document
# cd .. && latexmk -pdf main.tex
