a=1
start=0 
while IFS='' read -r line || [[ -n "$line" ]]; do
	if [[ ($a -gt 132) && ($a -lt 177) ]] 
	then
    	   echo 'Baseline : Solving Problems Glucose 19 '-$a-$line
     	 ./glucose -cpu-lim="5000" '../../../../../benchmarks/instances2019/new/'$line >> '19/'new_4_MLD_CBT_DL_V3-19_fp.txt
	fi
    	((a+=1))
done < "$1"
