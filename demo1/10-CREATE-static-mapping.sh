curl -XPUT http://localhost:9200/cars/car/_mapping -d '
{
  "car" : {
    "properties": {
      "color": {
        "type": "string"
      },
      "make": {
        "type": "string"
      },
      "mileage": {
        "type": "long"
      },
      "model": {
        "type": "string"
      },
      "price": {
        "type": "long"
      },
      "salvage": {
        "type": "boolean"
      },
      "transmission": {
        "type": "string"
      },
      "year": {
        "type": "long"
      },
      
      "motor" : {
        "type" : "nested",
        "properties" : {
          "engine_type" : {
            "type" : "string"
          },
          "displacement" : {
            "type" : "double"
          }
        }
      }
    }
  }
}'

