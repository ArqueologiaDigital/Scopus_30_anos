width=1000
echo "Gerando paginas em baixa resolucao:"
for f in ../originais/*.png
do
    echo "Convertendo $f ..."
    convert $f -resize $width $f.lowres.jpg
done

echo "Gerando pdf..."
convert ../originais/*.lowres.jpg Scopus_30_anos.pdf
rm ../originais/*.lowres.jpg -f

echo "pronto."
