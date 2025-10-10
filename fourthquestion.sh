cut -f7 example_people_data.tsv | sort | uniq -c | sort -k1,1nr | head -5

awk 'BEGIN{ FS="\t" ;} 
  { 
    if($6 <= 1975 && $7 == "Mozambique")
       { print $0 ; } 
  }' example_people_data.tsv | wc -l 
