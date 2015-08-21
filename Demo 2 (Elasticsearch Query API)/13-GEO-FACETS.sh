curl -XPOST http://localhost:9200/crimes/incident/_search?size=100 -d '
{
    "query" : {
      "match": {
      	"category": "drug/narcotic" 
      }
    },
    "facets" : {
        "geo1" : {
            "geo_distance" : {
                "incident.coordinates" : {
                  "lon": "-122.42164436905",
                  "lat": "37.7524457953258"
                },
                "unit" : "mi",
                "ranges" : [
                    { "to" : 1 },
                    { "from" : 1, "to" : 3 },
                    { "from" : 3 }
                ]
            }
        }
    }
}'
