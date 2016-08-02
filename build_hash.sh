#!/bin/bash
for h in {0..255}
do
  for s in {0..255}
   do
    for v in {0..255}
     do
      echo " | $h $s $v" >> vw_in.txt
    done
  done
done

vw -t --quiet -p vw_out.txt -i "$*" < vw_in.txt  ;

tr -d '\n' < vw_out.txt > vw_in.txt ;

mv vw_in.txt hash.txt ;
