curl -XGET http://localhost:9200/crimes/incident/_search?q=dayofweek:monday%20AND%20pddistrict:PARK&size=10&explain=1&pretty=true
