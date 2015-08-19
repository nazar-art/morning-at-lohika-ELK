curl -XGET http://localhost:9200/crimes/incident/_search?size=100&pretty=true -d '
{
  "query": {
    "fuzzy" : {
        "address" : {
            "value" :         "walley",
            "fuzziness" :     2
        }
    }
  }
}'

