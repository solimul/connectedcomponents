a=1
start=0
while IFS='' read -r line || [[ -n "$line" ]]; do
        if [ $a -gt 120 ]
        then
           echo 'Baseline : Solving Problems Glucose 19 '-$a-$line
         ./glucose -cpu-lim="5000" '../../../../../benchmarks/instances2019/old/'$line >> '19/'old_4_MLD_CBT_DL_V3-19_fp.txt
        fi
        ((a+=1))
done < "$1"
