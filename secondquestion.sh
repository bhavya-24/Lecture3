awk 'BEGIN{FS="\t" ;}
   { if($6 <= 1995 && NF == 7)
          {print $0 ; }
     
   }' example_people_data.tsv | wc -l
