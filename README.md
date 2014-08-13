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

## Links

Links to/from other datasets are available under [links](https://github.com/CEDAR-project/DataDump/tree/master/links/)

* To the [Historical International Standard Classification of Occupations](http://historyofwork.iisg.nl/) (HISCO)
* To the Amsterdamse Code and URIs of [gemeentegeschiedenis.nl](http://www.gemeentegeschiedenis.nl/)
* To occupations in the [ICONCLASS](http://iconclass.org/) system
* From the [Dutch Ships and Sailors](http://ghhpw.com/ships_and_sailors.php) dataset


## Scripts

* `generate-load-sql.py` generates a SQL load file (`load-cedar-rdf-data.sql`) for OpenLink virtuoso that loads all TTL files of a given directory
* `generate-virtuoso-db.py` generates the Virtuoso config file `virtuoso.db` that sets up users, SPARQL endpoints, graph permissions and graph groups
