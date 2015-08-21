curl -XPOST http://localhost:9200/crimes/incident/_search?size=100 -d '
{
  "query": {
    "bool": {
      "should": [
        {
          "match": {
            "category": "DRUG/NARCOTIC" 
          }
        },
        {
          "term": {
            "descript": {
              "value": "heroin",
              "boost": 4.0 
            }
          }
        },
        {
          "term": {
            "descript": {
              "value": "amphetamine",
              "boost": 2.0 
            }
          }
        }
      ],
      "must_not": [
        {
          "match": {
            "descript": "marijuana" 
          }
        }
      ]
    }
  }
}'
