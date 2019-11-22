setwd("//lancs/homes/05/johnsono/Downloads/Sunshine hours")
require(raster)
require(rgdal)
require(maptools)

##################################################### Monthly sun
################################## 2010 #########
shp <- readOGR(dsn = "C:/Users/johnsono/Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales/.", layer = "Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales")
rast <- brick("sun_hadukgrid_uk_1km_mon_201001-201012.nc")
crs(rast) <- proj4string(shp)
sun2010 <- extract(rast, as(shp,"SpatialPolygons"), fun=mean, na.rm=TRUE, df=T, layer=1)
colnames(sun2010)[1] <- "objectid"
source("../combine_spdf_df.R")
shp@data <- combine_spdf_df(shp, sun2010, by="objectid")
write.csv(shp@data, file="UKLSOA2010sunMONTH.csv", row.names = FALSE)

################################## 2011 #########
shp <- readOGR(dsn = "C:/Users/johnsono/Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales/.", layer = "Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales")
rast <- brick("sun_hadukgrid_uk_1km_mon_201101-201112.nc")
crs(rast) <- proj4string(shp)
sun2011 <- extract(rast, as(shp,"SpatialPolygons"), fun=mean, na.rm=TRUE, df=T, layer=1)
colnames(sun2011)[1] <- "objectid"
shp <- merge(shp, sun2011, by="objectid")
write.csv(shp@data, file="UKLSOA2011sunMONTH.csv", row.names = FALSE)

################################## 2012 #########
shp <- readOGR(dsn = "C:/Users/johnsono/Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales/.", layer = "Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales")
rast <- brick("sun_hadukgrid_uk_1km_mon_201201-201212.nc")
crs(rast) <- proj4string(shp)
sun2012 <- extract(rast, as(shp,"SpatialPolygons"), fun=mean, na.rm=TRUE, df=T, layer=1)
colnames(sun2012)[1] <- "objectid"
shp <- merge(shp, sun2012, by="objectid")
write.csv(shp@data, file="UKLSOA2012sunMONTH.csv", row.names = FALSE)

################################## 2013 #########
shp <- readOGR(dsn = "C:/Users/johnsono/Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales/.", layer = "Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales")
rast <- brick("sun_hadukgrid_uk_1km_mon_201301-201312.nc")
crs(rast) <- proj4string(shp)
sun2013 <- extract(rast, as(shp,"SpatialPolygons"), fun=mean, na.rm=TRUE, df=T, layer=1)
colnames(sun2013)[1] <- "objectid"
shp <- merge(shp, sun2013, by="objectid")
write.csv(shp@data, file="UKLSOA2013sunMONTH.csv", row.names = FALSE)

################################## 2014 #########
shp <- readOGR(dsn = "C:/Users/johnsono/Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales/.", layer = "Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales")
rast <- brick("sun_hadukgrid_uk_1km_mon_201401-201412.nc")
crs(rast) <- proj4string(shp)
sun2014 <- extract(rast, as(shp,"SpatialPolygons"), fun=mean, na.rm=TRUE, df=T, layer=1)
colnames(sun2014)[1] <- "objectid"
shp <- merge(shp, sun2014, by="objectid")
write.csv(shp@data, file="UKLSOA2014sunMONTH.csv", row.names = FALSE)

################################## 2015 #########
shp <- readOGR(dsn = "C:/Users/johnsono/Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales/.", layer = "Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales")
rast <- brick("sun_hadukgrid_uk_1km_mon_201501-201512.nc")
crs(rast) <- proj4string(shp)
sun2015 <- extract(rast, as(shp,"SpatialPolygons"), fun=mean, na.rm=TRUE, df=T, layer=1)
colnames(sun2015)[1] <- "objectid"
shp <- merge(shp, sun2015, by="objectid")
write.csv(shp@data, file="UKLSOA2015sunMONTH.csv", row.names = FALSE)

################################## 2016 #########
shp <- readOGR(dsn = "C:/Users/johnsono/Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales/.", layer = "Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales")
rast <- brick("sun_hadukgrid_uk_1km_mon_201601-201612.nc")
crs(rast) <- proj4string(shp)
sun2016 <- extract(rast, as(shp,"SpatialPolygons"), fun=mean, na.rm=TRUE, df=T, layer=1)
colnames(sun2016)[1] <- "objectid"
shp <- merge(shp, sun2015, by="objectid")
write.csv(shp@data, file="UKLSOA2016sunMONTH.csv", row.names = FALSE)

################################## 2017 #########
shp <- readOGR(dsn = "C:/Users/johnsono/Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales/.", layer = "Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales")
rast <- brick("sun_hadukgrid_uk_1km_mon_201701-201712.nc")
crs(rast) <- proj4string(shp)
sun2017 <- extract(rast, as(shp,"SpatialPolygons"), fun=mean, na.rm=TRUE, df=T, layer=1)
colnames(sun2017)[1] <- "objectid"
shp <- merge(shp, sun2017, by="objectid")
write.csv(shp@data, file="UKLSOA2017sunMONTH.csv", row.names = FALSE)

