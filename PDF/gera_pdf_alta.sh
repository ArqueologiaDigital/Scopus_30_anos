echo "Comprimindo paginas:"
for f in ../originais/*.png
do
    echo "Convertendo $f ..."
    convert $f $f.jpg
done

echo "Gerando o pdf de alta resolucao..."
convert ../originais/*.jpg Scopus_30_anos.alta_resolucao.pdf
rm ../originais/*.jpg -f

echo "pronto."
