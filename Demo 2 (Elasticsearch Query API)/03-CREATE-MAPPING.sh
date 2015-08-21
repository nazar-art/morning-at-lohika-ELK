curl -XPUT http://localhost:9200/crimes/incident/_mapping -d '
{
        "properties" : {
          "address" : {
            "type" : "string"
          },
          "category" : {
            "type" : "string"
          },
          "date" : {
            "type" : "date",
            "format" : "dateOptionalTime"
          },
          "dayofweek" : {
            "type" : "string"
          },
          "descript" : {
            "type" : "string"
          },
          "incidntnum" : {
            "type" : "integer"
          },
          "location" : {
            "properties" : {
              "human_address" : {
                "type" : "string"
              },
              "latitude" : {
                "type" : "float"
              },
              "longitude" : {
                "type" : "float"
              },
              "needs_recoding" : {
                "type" : "boolean"
              }
            }
          },
          "pddistrict" : {
            "type" : "string"
          },
          "pdid" : {
            "type" : "long"
          },
          "resolution" : {
            "type" : "string"
          },
          "time" : {
            "type" : "date",
            "format" : "hour_minute"
          },
          "coordinates" : {
            "type" : "geo_point"
          }
        }
}'

