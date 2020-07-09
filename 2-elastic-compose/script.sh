#!/bin/bash

###############################################################
#
#  DESCRIPTION: 
###############################################################

#docker run -d --name elasticsearch -v /srv/elas1:/usr/share/elasticsearch/data -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" elasticsearch:5

docker run -d --name elasticsearch2 -v /srv/elas1:/usr/share/elasticsearch/data -p 9200:9200 -p 9300:9300 -e "ELASTICSEARCH_HEAP_SIZE=512m" bitnami/elasticsearch

curl -X GET "127.0.0.1:9200"
