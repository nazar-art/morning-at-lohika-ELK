curl -XPOST http://localhost:9200/crimes/incident/_search?size=100 -d '
{
  "query" : {
    "filtered" : {
        "query" : {
          "match": {
            "category": "theft" 
          }
        },
        "filter" : {
          "geo_polygon" : {
             "incident.coordinates" : {
               "points" : [
                 { "lat" : 37.745101531330, "lon" : -122.392184414012 },
                 { "lat" : 37.7289335719376, "lon" : -122.402126717471 },
                 { "lat" : 37.7290043498675, "lon" : -122.408548479891 }
               ]
            }
          }
        }
    }
  }
}'
