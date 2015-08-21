curl -XPOST http://localhost:9200/cars/car/_search -d '
{
  "query" : {
    "term" : {
      "make" : "mitsubishi"
    }
  }
}'

