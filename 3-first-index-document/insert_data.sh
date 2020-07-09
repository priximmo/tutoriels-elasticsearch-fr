#!/bin/bash

# insert data index xavki / type users : nom/prenom/ville

curl -X POST 'http://localhost:9200/_bulk' -d '
{ "create" : { "_index" : "xavki", "_type" : "utilisateurs", "_id": 1 } }
{"nom": "xavier", "prenom": "blog", "ville" : "Caen"}
{ "create" : { "_index" : "xavki", "_type" : "utilisateurs", "_id": 2 } }
{"nom": "Michu", "prenom": "Paul", "ville" : "Lyon"}
{ "create" : { "_index" : "xavki", "_type" : "utilisateurs", "_id": 3 } }
{"nom": "Michalon", "prenom": "Pierre", "ville" : "Marseille"}'
