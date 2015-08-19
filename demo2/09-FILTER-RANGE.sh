curl -XPOST http://localhost:9200/crimes/incident/_search?size=100 -d '
{
  "filter" : {
    "range" : {
      "time" : {
        "gte": "18:00",
        "lte": "20:00"
      }
    }
  }
}'
