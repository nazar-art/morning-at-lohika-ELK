curl -XPUT http://localhost:9200/crimes/ -d '
{
    "settings" : {
        "index" : {
            "number_of_shards" : 3,
            "number_of_replicas" : 1
        }
    }
}'

