curl -XPOST http://localhost:9200/crimes/incident/_search?size=100 -d '
{
  "query" : {
    "filtered" : {
        "query" : {
            "match" : {
              "category" : "theft"
            }
        },
        "filter" : {
            "geo_distance" : {
                "distance" : "2mi",
                "incident.coordinates" : {
                    "lat" : 37.7532511,
                    "lon" : -122.451283
                }
            }
        }
    }
  }
}'

