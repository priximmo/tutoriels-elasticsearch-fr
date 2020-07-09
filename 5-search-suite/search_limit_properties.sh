#!/bin/bash

curl -XGET 'http://127.0.0.1:9200/xavki/utilisateurs/_search' -d '
{
    "query": {
        "multi_match" : {
            "query" : "paul+xavier",
            "fields" : ["prenom^3", "nom"]
        }
		},
		"_source" : ["prenom", "nom"]
}'
