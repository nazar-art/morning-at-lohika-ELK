cat tmnf-yvry.json | jq -c '.[] | {"index": {"_index": "crimes", "_type": "incident", "_id": .pdid}}, .' | curl -XPOST http://localhost:9200/_bulk --data-binary @-
