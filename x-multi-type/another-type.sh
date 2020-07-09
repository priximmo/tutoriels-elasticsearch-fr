#!/bin/bash

# add mapping


curl -XPUT 'http://127.0.0.1:9200/xavki/_mapping/films' -d '
{
    "films" : {
        "properties" : {
              "film" : {"type":"string"},
						  "type" : {"type":"string"},
 							"resume": {"type":"string"}
        }
    }
}
'
