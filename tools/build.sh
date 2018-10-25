#!/bin/sh

read -p "Are you on a retina mac? [y,n] " doit
case $doit in
  y|Y) DPI=1200 ;;
  n|N) DPI=300 ;;
  *) exit -1 ;;
esac


# Where to save PDFs
PDF_PATH=`cd ../Out; pwd`

function mdToPDf
{
  for i in *.md
  do
    if [ -f "$i" -a "$i" -nt "${PDF_PATH}/${i%.md}.pdf" ]
    then
      echo "Making html and pdf for ${i%.md}"
      pandoc \
        --self-contained \
        --css ../Style/Default.css \
        --from=markdown \
        -o "${PDF_PATH}/$i".html \
        --to=html5 \
        "$i" 

        wkhtmltopdf \
          --quiet \
          --dpi ${DPI} \
          --disable-smart-shrinking \
          "${PDF_PATH}/${i}.html" \
          "${PDF_PATH}/${i%.md}".pdf >> /dev/null

        if [ ! $? ]
        then
          echo "Failed to create ${PDF_PATH}/${i%.md}.pdf"
        fi
    fi
  done
}

cd "../Tasks"
mdToPDf

cd "../Communications"
mdToPDf
