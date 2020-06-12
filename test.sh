curl -s "http://localhost:9200/_cat/indices" | grep -i 2020	 | grep -wv close | awk '{print $3}' | awk -F'-2020' '{print $1}'  | grep -v filebeat | sort | uniq > indices_temp_new
rm indices_diff
touch indices_diff
for i in `cat indices_temp_new`
do
    count=`grep -i $i indices_temp | wc -l`
    # echo $count
    # echo $i
    if [ $count -eq 0 ]
    then
        echo $i >> indices_diff
    fi
done	
for i in `cat indices_diff`
do
	echo $i
    curl -XPOST "http://localhost:9200/.kibana/_doc/index-pattern:$i" -H 'Content-Type: application/json' -d'{ "type" : "index-pattern", "index-pattern" : { "title": "'$i'*", "timeFieldName": "@timestamp" } }'
done
# wc -c < indices_diff
cat indices_diff >> indices_temp