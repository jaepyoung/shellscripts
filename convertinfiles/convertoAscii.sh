cat ./utfsqlfiles.txt | while read filename
do
     filename2=`echo ${filename} | sed s:./::` 
     iconv -f UTF-16 -t US-ASCII ${filename} > ~/textfiles/${filename2}
     dos2unix ~/textfiles/${filename2}
     cp ~/textfiles/${filename2} ${filename}
done
