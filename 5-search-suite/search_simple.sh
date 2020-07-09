#!/bin/bash

curl -XGET 'http://127.0.0.1:9200/xavki/utilisateurs/_search' -d '
{
    "query":{
        "match":{
            "prenom":"paul"
        }
    }
}'
