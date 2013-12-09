"""
This script generates the file virtuoso.db
Virtuoso DB options for CEDAR data
"""

import os

sql = ""
sql += "## User 'cedar' has read access to several graphs."


sql += "DB.DBA.USER_CREATE ('cedar', sprintf('%d',rnd(1e16)));\n"
sql += "GRANT SPARQL_SELECT to \"cedar\";\n"
sql += "DB.DBA.RDF_DEFAULT_USER_PERMS_SET ('cedar', 0);\n"

for f in os.listdir('../../cedar-dump'):
    graph = f.split('_marked.ttl')[0]
    sql += "DB.DBA.RDF_GRAPH_USER_PERMS_SET ('http://lod.cedar-project.nl/resource/" + graph  + "', 'cedar', 1);\n"


sql += "\n"
sql += "## Endpoint /sparql/cedar uses credentials of user 'cedar'\n"
sql += "DB.DBA.VHOST_REMOVE (\n"
sql += "	 lhost=>'*ini*',\n"
sql += "	 vhost=>'*ini*',\n"
sql += "	 lpath=>'/sparql/cedar'\n"
sql += ");\n"
sql += "DB.DBA.VHOST_DEFINE (\n"
sql += "	 lhost=>'*ini*',\n"
sql += "	 vhost=>'*ini*',\n"
sql += "	 lpath=>'/sparql/cedar',\n"
sql += "	 ppath=>'/!sparql/',\n"
sql += "	 is_dav=>1,\n"
sql += "	 def_page=>'',\n"
sql += "	 sec=>'basic',\n"
sql += "	 realm=>'cedar',\n"
sql += "	 auth_fn=>'DB.DBA.HP_AUTH_SQL_USER_AUTO',\n"
sql += "	 vsp_user=>'dba',\n"
sql += "	 ses_vars=>0,\n"
sql += "	 opts=>vector ('browse_sheet', '', 'noinherit', 'yes', 'cors', '*', 'cors_restricted', 0),\n"
sql += "	 is_default_host=>0\n"
sql += ");\n"
sql += "\n"

fw = open('virtuoso.db', 'w')
fw.write(sql)
fw.close()
