curl -XPOST http://localhost:9200/crimes/incident/_search?size=100 -d '
{
  "query": {
    "fuzzy" : {
        "address" : {
            "value" :         "valley",
            "fuzziness" :     2
        }
    }
  }
}'
