"""
This script generates the file load-cedar-data.sql
Feeds a local Virtuoso triplestore with CEDAR TTL dataset
"""

import os

sql = ""
sql += "## /opt/virtuoso7/bin/isql 3111 dba **pass**\n"
sql += "\n"
sql += "# Clear graphs first\n"

files = os.listdir('../../cedar-dump')
for f in files:
    graph = f.split('_marked.ttl')[0]
    sql += "SPARQL CLEAR GRAPH <http://lod.cedar-project.nl/resource/" + graph + ">;\n"

sql += "\n"
sql += "# Update load list with one graph per TTL file\n"
sql += "\n"

for f in files:
    graph = f.split('_marked.ttl')[0]
    sql += "ld_dir(\'/home/virtuoso/triples2load/cedar-dump/\', \'" + f + "\', \'http://lod.cedar-project.nl/resource/" + graph + "\');\n"

sql += "\n"
sql += "# Load everything\n"
sql += "rdf_loader_run();\n"
sql += "checkpoint;\n"

fw = open('load-cedar-rdf-data.sql', 'w')
fw.write(sql)
fw.close()
