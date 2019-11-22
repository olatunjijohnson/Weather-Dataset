setwd("//lancs/homes/05/johnsono/Downloads/Ground Frost")
require(raster)
require(rgdal)
require(maptools)

##################################################### Monthly groundfrost
################################## 2010 #########
shp <- readOGR(dsn = "C:/Users/johnsono/Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales/.", layer = "Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales")
rast <- brick("groundfrost_hadukgrid_uk_1km_mon_201001-201012.nc")
crs(rast) <- proj4string(shp)
groundfrost2010 <- extract(rast, as(shp,"SpatialPolygons"), fun=mean, na.rm=TRUE, df=T, layer=1)
colnames(groundfrost2010)[1] <- "objectid"
source("../combine_spdf_df.R")
shp@data <- combine_spdf_df(shp, groundfrost2010, by="objectid")
write.csv(shp@data, file="UKLSOA2010groundfrostMONTH.csv", row.names = FALSE)

################################## 2011 #########
shp <- readOGR(dsn = "C:/Users/johnsono/Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales/.", layer = "Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales")
rast <- brick("groundfrost_hadukgrid_uk_1km_mon_201101-201112.nc")
crs(rast) <- proj4string(shp)
groundfrost2011 <- extract(rast, as(shp,"SpatialPolygons"), fun=mean, na.rm=TRUE, df=T, layer=1)
colnames(groundfrost2011)[1] <- "objectid"
shp <- merge(shp, groundfrost2011, by="objectid")
write.csv(shp@data, file="UKLSOA2011groundfrostMONTH.csv", row.names = FALSE)

################################## 2012 #########
shp <- readOGR(dsn = "C:/Users/johnsono/Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales/.", layer = "Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales")
rast <- brick("groundfrost_hadukgrid_uk_1km_mon_201201-201212.nc")
crs(rast) <- proj4string(shp)
groundfrost2012 <- extract(rast, as(shp,"SpatialPolygons"), fun=mean, na.rm=TRUE, df=T, layer=1)
colnames(groundfrost2012)[1] <- "objectid"
shp <- merge(shp, groundfrost2012, by="objectid")
write.csv(shp@data, file="UKLSOA2012groundfrostMONTH.csv", row.names = FALSE)

################################## 2013 #########
shp <- readOGR(dsn = "C:/Users/johnsono/Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales/.", layer = "Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales")
rast <- brick("groundfrost_hadukgrid_uk_1km_mon_201301-201312.nc")
crs(rast) <- proj4string(shp)
groundfrost2013 <- extract(rast, as(shp,"SpatialPolygons"), fun=mean, na.rm=TRUE, df=T, layer=1)
colnames(groundfrost2013)[1] <- "objectid"
shp <- merge(shp, groundfrost2013, by="objectid")
write.csv(shp@data, file="UKLSOA2013groundfrostMONTH.csv", row.names = FALSE)

################################## 2014 #########
shp <- readOGR(dsn = "C:/Users/johnsono/Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales/.", layer = "Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales")
rast <- brick("groundfrost_hadukgrid_uk_1km_mon_201401-201412.nc")
crs(rast) <- proj4string(shp)
groundfrost2014 <- extract(rast, as(shp,"SpatialPolygons"), fun=mean, na.rm=TRUE, df=T, layer=1)
colnames(groundfrost2014)[1] <- "objectid"
shp <- merge(shp, groundfrost2014, by="objectid")
write.csv(shp@data, file="UKLSOA2014groundfrostMONTH.csv", row.names = FALSE)

################################## 2015 #########
shp <- readOGR(dsn = "C:/Users/johnsono/Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales/.", layer = "Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales")
rast <- brick("groundfrost_hadukgrid_uk_1km_mon_201501-201512.nc")
crs(rast) <- proj4string(shp)
groundfrost2015 <- extract(rast, as(shp,"SpatialPolygons"), fun=mean, na.rm=TRUE, df=T, layer=1)
colnames(groundfrost2015)[1] <- "objectid"
shp <- merge(shp, groundfrost2015, by="objectid")
write.csv(shp@data, file="UKLSOA2015groundfrostMONTH.csv", row.names = FALSE)

################################## 2016 #########
shp <- readOGR(dsn = "C:/Users/johnsono/Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales/.", layer = "Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales")
rast <- brick("groundfrost_hadukgrid_uk_1km_mon_201601-201612.nc")
crs(rast) <- proj4string(shp)
groundfrost2016 <- extract(rast, as(shp,"SpatialPolygons"), fun=mean, na.rm=TRUE, df=T, layer=1)
colnames(groundfrost2016)[1] <- "objectid"
shp <- merge(shp, groundfrost2015, by="objectid")
write.csv(shp@data, file="UKLSOA2016groundfrostMONTH.csv", row.names = FALSE)

################################## 2017 #########
shp <- readOGR(dsn = "C:/Users/johnsono/Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales/.", layer = "Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales")
rast <- brick("groundfrost_hadukgrid_uk_1km_mon_201701-201712.nc")
crs(rast) <- proj4string(shp)
groundfrost2017 <- extract(rast, as(shp,"SpatialPolygons"), fun=mean, na.rm=TRUE, df=T, layer=1)
colnames(groundfrost2017)[1] <- "objectid"
shp <- merge(shp, groundfrost2017, by="objectid")
write.csv(shp@data, file="UKLSOA2017groundfrostMONTH.csv", row.names = FALSE)

