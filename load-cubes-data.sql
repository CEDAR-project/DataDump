## /opt/virtuoso7/bin/isql 3111 dba **pass**

# Clear graphs first

SPARQL CLEAR GRAPH <http://lod.cedar-project.nl/resource/r1/BRT-1889>;
SPARQL CLEAR GRAPH <http://lod.cedar-project.nl/resource/r1/BRT-1899>;
SPARQL CLEAR GRAPH <http://lod.cedar-project.nl/resource/r1/BRT-1909>;
SPARQL CLEAR GRAPH <http://lod.cedar-project.nl/resource/r1/BRT-1920>;
SPARQL CLEAR GRAPH <http://lod.cedar-project.nl/resource/r1/BRT-1930>;
SPARQL CLEAR GRAPH <http://lod.cedar-project.nl/resource/r1/BRT-1947>;
SPARQL CLEAR GRAPH <http://lod.cedar-project.nl/resource/r1/VT-1795>;
SPARQL CLEAR GRAPH <http://lod.cedar-project.nl/resource/r1/VT-1830>;
SPARQL CLEAR GRAPH <http://lod.cedar-project.nl/resource/r1/VT-1840>;
SPARQL CLEAR GRAPH <http://lod.cedar-project.nl/resource/r1/VT-1849>;
SPARQL CLEAR GRAPH <http://lod.cedar-project.nl/resource/r1/VT-1859>;
SPARQL CLEAR GRAPH <http://lod.cedar-project.nl/resource/r1/VT-1869>;
SPARQL CLEAR GRAPH <http://lod.cedar-project.nl/resource/r1/VT-1879>;
SPARQL CLEAR GRAPH <http://lod.cedar-project.nl/resource/r1/VT-1889>;
SPARQL CLEAR GRAPH <http://lod.cedar-project.nl/resource/r1/VT-1899>;
SPARQL CLEAR GRAPH <http://lod.cedar-project.nl/resource/r1/VT-1909>;
SPARQL CLEAR GRAPH <http://lod.cedar-project.nl/resource/r1/VT-1920>;
SPARQL CLEAR GRAPH <http://lod.cedar-project.nl/resource/r1/VT-1930>;
SPARQL CLEAR GRAPH <http://lod.cedar-project.nl/resource/r1/VT-1947>;
SPARQL CLEAR GRAPH <http://lod.cedar-project.nl/resource/r1/VT-1971>;
SPARQL CLEAR GRAPH <http://lod.cedar-project.nl/resource/r1/WT-1899>;
SPARQL CLEAR GRAPH <http://lod.cedar-project.nl/resource/r1/WT-1909>;
SPARQL CLEAR GRAPH <http://lod.cedar-project.nl/resource/r1/WT-1919>;
SPARQL CLEAR GRAPH <http://lod.cedar-project.nl/resource/r1/WT-1930>;
SPARQL CLEAR GRAPH <http://lod.cedar-project.nl/resource/r1/WT-1947>;
SPARQL CLEAR GRAPH <http://lod.cedar-project.nl/resource/r1/WT-1956>;
SPARQL CLEAR GRAPH <http://lod.cedar-project.nl/resource/r1/WT-1971>;

# Update load list with one graph per TTL file

ld_dir('/home/virtuoso/triples2load/cubes/', 'BRT-1889.ttl', 'http://lod.cedar-project.nl/resource/r1/BRT-1889');
ld_dir('/home/virtuoso/triples2load/cubes/', 'BRT-1899.ttl', 'http://lod.cedar-project.nl/resource/r1/BRT-1899');
ld_dir('/home/virtuoso/triples2load/cubes/', 'BRT-1909.ttl', 'http://lod.cedar-project.nl/resource/r1/BRT-1909');
ld_dir('/home/virtuoso/triples2load/cubes/', 'BRT-1920.ttl', 'http://lod.cedar-project.nl/resource/r1/BRT-1920');
ld_dir('/home/virtuoso/triples2load/cubes/', 'BRT-1930.ttl', 'http://lod.cedar-project.nl/resource/r1/BRT-1930');
ld_dir('/home/virtuoso/triples2load/cubes/', 'BRT-1947.ttl', 'http://lod.cedar-project.nl/resource/r1/BRT-1947');
ld_dir('/home/virtuoso/triples2load/cubes/', 'VT-1795.ttl', 'http://lod.cedar-project.nl/resource/r1/VT-1795');
ld_dir('/home/virtuoso/triples2load/cubes/', 'VT-1830.ttl', 'http://lod.cedar-project.nl/resource/r1/VT-1830');
ld_dir('/home/virtuoso/triples2load/cubes/', 'VT-1840.ttl', 'http://lod.cedar-project.nl/resource/r1/VT-1840');
ld_dir('/home/virtuoso/triples2load/cubes/', 'VT-1849.ttl', 'http://lod.cedar-project.nl/resource/r1/VT-1849');
ld_dir('/home/virtuoso/triples2load/cubes/', 'VT-1859.ttl', 'http://lod.cedar-project.nl/resource/r1/VT-1859');
ld_dir('/home/virtuoso/triples2load/cubes/', 'VT-1869.ttl', 'http://lod.cedar-project.nl/resource/r1/VT-1869');
ld_dir('/home/virtuoso/triples2load/cubes/', 'VT-1879.ttl', 'http://lod.cedar-project.nl/resource/r1/VT-1879');
ld_dir('/home/virtuoso/triples2load/cubes/', 'VT-1889.ttl', 'http://lod.cedar-project.nl/resource/r1/VT-1889');
ld_dir('/home/virtuoso/triples2load/cubes/', 'VT-1899.ttl', 'http://lod.cedar-project.nl/resource/r1/VT-1899');
ld_dir('/home/virtuoso/triples2load/cubes/', 'VT-1909.ttl', 'http://lod.cedar-project.nl/resource/r1/VT-1909');
ld_dir('/home/virtuoso/triples2load/cubes/', 'VT-1920.ttl', 'http://lod.cedar-project.nl/resource/r1/VT-1920');
ld_dir('/home/virtuoso/triples2load/cubes/', 'VT-1930.ttl', 'http://lod.cedar-project.nl/resource/r1/VT-1930');
ld_dir('/home/virtuoso/triples2load/cubes/', 'VT-1947.ttl', 'http://lod.cedar-project.nl/resource/r1/VT-1947');
ld_dir('/home/virtuoso/triples2load/cubes/', 'VT-1971.ttl', 'http://lod.cedar-project.nl/resource/r1/VT-1971');
ld_dir('/home/virtuoso/triples2load/cubes/', 'WT-1899.ttl', 'http://lod.cedar-project.nl/resource/r1/WT-1899');
ld_dir('/home/virtuoso/triples2load/cubes/', 'WT-1909.ttl', 'http://lod.cedar-project.nl/resource/r1/WT-1909');
ld_dir('/home/virtuoso/triples2load/cubes/', 'WT-1919.ttl', 'http://lod.cedar-project.nl/resource/r1/WT-1919');
ld_dir('/home/virtuoso/triples2load/cubes/', 'WT-1930.ttl', 'http://lod.cedar-project.nl/resource/r1/WT-1930');
ld_dir('/home/virtuoso/triples2load/cubes/', 'WT-1947.ttl', 'http://lod.cedar-project.nl/resource/r1/WT-1947');
ld_dir('/home/virtuoso/triples2load/cubes/', 'WT-1956.ttl', 'http://lod.cedar-project.nl/resource/r1/WT-1956');
ld_dir('/home/virtuoso/triples2load/cubes/', 'WT-1971.ttl', 'http://lod.cedar-project.nl/resource/r1/WT-1971');

# Load everything
rdf_loader_run();
checkpoint;
