#!/bin/bash

# create index xavki : nom/prenom/ville

curl -X PUT 'http://127.0.0.1:9200/xavki' -d '
  { "mappings": {
    "utilisateurs" : {
      "properties" : {
  "nom" : {"type":"string"},
  "prenom" : {"type":"string"},
  "ville": {"type":"string"}
}}}}'

