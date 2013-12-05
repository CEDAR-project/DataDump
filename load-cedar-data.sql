## /opt/virtuoso7/bin/isql 3111 dba **pass**
ld_dir('/home/virtuoso/triples2load/cedar-dump/', 'BRT_1889_02_T1_marked.ttl', 'http://lod.cedar-project.nl/resource/BRT_1889_02_T1');
ld_dir('/home/virtuoso/triples2load/cedar-dump/', 'BRT_1889_02_T3_marked.ttl', 'http://lod.cedar-project.nl/resource/BRT_1889_02_T3');
rdf_loader_run();
