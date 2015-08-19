curl -XPOST http://localhost:9200/crimes/incident/_search?size=100 -d '
{
  "query" : {
    "filtered" : {
        "query" : {
          "match": {
            "category": "ROBBERY" 
          }
        },
        "filter" : {
          "geo_bounding_box" : {
             "incident.coordinates" : {
               "top_left" : {
                 "lat" : 37.7540114,
                 "lon" : -122.447496
               },
               "bottom_right" : {
                 "lat" : 37.6540114,
                 "lon" : -121.447496
               }
            }
          }
        }
    }
  }
}'
