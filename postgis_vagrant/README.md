## PostGIS VM

### How to start the VM?
```
cd postgis_vagrant #from c26 root folder
vagrant up
```

### What does this machine do?

A few software are installed including:

  - PostgreSQL
  - PostGIS
  - pgAdmin
  - QGIS

A default postgresql user is created as `vagrant` so X11 can be used for the visualization tools (pgAdmin, QGIS)

A database called `nyc` is created for storing shapefile (roads) for New York city

NYC roads are then downloaded and pushed into `nyc` DB

### Sample SQL queries

  - Show 20 roads in NYC and their attributes
`select ST_AsText(geom),* from new_york_highway limit 20;`

  - Show all the roads type in NYC
`select type, count(type) as num from new_york_highway group by type;`

  - Find intersecting streets with a polygon/triangle somewhere around NYC-Manhattan
```
select name, type,oneway
from new_york_highway 
where ST_Intersects(geom, ST_GeomFromText('POLYGON((-73.968890 40.769531, -73.960991 40.767752, -73.965609 40.764638, -73.968890 40.769531))', 4269));
```