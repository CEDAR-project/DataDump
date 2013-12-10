# DataDump / Setup scripts, v0.1

Data dump with 

* the source Excel workbooks containing the Dutch historical censuses
* CSV conversion
* markup
* RDF conversion via [TabLinker](https://github.com/Data2Semantics/TabLinker/)

## Data formats

Currently the redundant formats are:

* Original raw Excel spreadsheets, under [xls](https://github.com/CEDAR-project/DataDump/tree/master/xls/)
* CSV conversion of the spreadsheets, under [csv](https://github.com/CEDAR-project/DataDump/tree/master/csv/)
* Original Excel with markup, under [xls-marked](https://github.com/CEDAR-project/DataDump/tree/master/xls-marked/)
* Conversion of the previous directory to RDF Turtle, under [rdf](https://github.com/CEDAR-project/DataDump/tree/master/rdf/)
* Legacy HASH project database, under [hash-sql](https://github.com/CEDAR-project/DataDump/tree/master/hash-sql/)

## Scripts

* `generate-load-sql.py` generates a SQL load file (`load-cedar-rdf-data.sql`) for OpenLink virtuoso that loads all TTL files of a given directory
* `generate-virtuoso-db.py` generates the Virtuoso config file `virtuoso.db` that sets up users, SPARQL endpoints, graph permissions and graph groups
