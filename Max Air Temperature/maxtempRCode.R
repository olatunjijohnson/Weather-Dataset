setwd("//lancs/homes/05/johnsono/Downloads/Max air temperature")
require(raster)
require(rgdal)
require(maptools)

##################################################### Monthly maxtemp
################################## 2010 #########
shp <- readOGR(dsn = "C:/Users/johnsono/Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales/.", layer = "Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales")
rast <- brick("tasmax_hadukgrid_uk_1km_mon_201001-201012.nc")
crs(rast) <- proj4string(shp)
maxtemp2010 <- extract(rast, as(shp,"SpatialPolygons"), fun=mean, na.rm=TRUE, df=T, layer=1)
colnames(maxtemp2010)[1] <- "objectid"
source("../combine_spdf_df.R")
shp@data <- combine_spdf_df(shp, maxtemp2010, by="objectid")
write.csv(shp@data, file="UKLSOA2010maxtempMONTH.csv", row.names = FALSE)

################################## 2011 #########
shp <- readOGR(dsn = "C:/Users/johnsono/Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales/.", layer = "Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales")
rast <- brick("tasmax_hadukgrid_uk_1km_mon_201101-201112.nc")
crs(rast) <- proj4string(shp)
maxtemp2011 <- extract(rast, as(shp,"SpatialPolygons"), fun=mean, na.rm=TRUE, df=T, layer=1)
colnames(maxtemp2011)[1] <- "objectid"
shp <- merge(shp, maxtemp2011, by="objectid")
write.csv(shp@data, file="UKLSOA2011maxtempMONTH.csv", row.names = FALSE)

################################## 2012 #########
shp <- readOGR(dsn = "C:/Users/johnsono/Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales/.", layer = "Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales")
rast <- brick("tasmax_hadukgrid_uk_1km_mon_201201-201212.nc")
crs(rast) <- proj4string(shp)
maxtemp2012 <- extract(rast, as(shp,"SpatialPolygons"), fun=mean, na.rm=TRUE, df=T, layer=1)
colnames(maxtemp2012)[1] <- "objectid"
shp <- merge(shp, maxtemp2012, by="objectid")
write.csv(shp@data, file="UKLSOA2012maxtempMONTH.csv", row.names = FALSE)

################################## 2013 #########
shp <- readOGR(dsn = "C:/Users/johnsono/Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales/.", layer = "Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales")
rast <- brick("tasmax_hadukgrid_uk_1km_mon_201301-201312.nc")
crs(rast) <- proj4string(shp)
maxtemp2013 <- extract(rast, as(shp,"SpatialPolygons"), fun=mean, na.rm=TRUE, df=T, layer=1)
colnames(maxtemp2013)[1] <- "objectid"
shp <- merge(shp, maxtemp2013, by="objectid")
write.csv(shp@data, file="UKLSOA2013maxtempMONTH.csv", row.names = FALSE)

################################## 2014 #########
shp <- readOGR(dsn = "C:/Users/johnsono/Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales/.", layer = "Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales")
rast <- brick("tasmax_hadukgrid_uk_1km_mon_201401-201412.nc")
crs(rast) <- proj4string(shp)
maxtemp2014 <- extract(rast, as(shp,"SpatialPolygons"), fun=mean, na.rm=TRUE, df=T, layer=1)
colnames(maxtemp2014)[1] <- "objectid"
shp <- merge(shp, maxtemp2014, by="objectid")
write.csv(shp@data, file="UKLSOA2014maxtempMONTH.csv", row.names = FALSE)

################################## 2015 #########
shp <- readOGR(dsn = "C:/Users/johnsono/Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales/.", layer = "Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales")
rast <- brick("tasmax_hadukgrid_uk_1km_mon_201501-201512.nc")
crs(rast) <- proj4string(shp)
maxtemp2015 <- extract(rast, as(shp,"SpatialPolygons"), fun=mean, na.rm=TRUE, df=T, layer=1)
colnames(maxtemp2015)[1] <- "objectid"
shp <- merge(shp, maxtemp2015, by="objectid")
write.csv(shp@data, file="UKLSOA2015maxtempMONTH.csv", row.names = FALSE)

################################## 2016 #########
shp <- readOGR(dsn = "C:/Users/johnsono/Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales/.", layer = "Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales")
rast <- brick("tasmax_hadukgrid_uk_1km_mon_201601-201612.nc")
crs(rast) <- proj4string(shp)
maxtemp2016 <- extract(rast, as(shp,"SpatialPolygons"), fun=mean, na.rm=TRUE, df=T, layer=1)
colnames(maxtemp2016)[1] <- "objectid"
shp <- merge(shp, maxtemp2015, by="objectid")
write.csv(shp@data, file="UKLSOA2016maxtempMONTH.csv", row.names = FALSE)

################################## 2017 #########
shp <- readOGR(dsn = "C:/Users/johnsono/Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales/.", layer = "Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales")
rast <- brick("tasmax_hadukgrid_uk_1km_mon_201701-201712.nc")
crs(rast) <- proj4string(shp)
maxtemp2017 <- extract(rast, as(shp,"SpatialPolygons"), fun=mean, na.rm=TRUE, df=T, layer=1)
colnames(maxtemp2017)[1] <- "objectid"
shp <- merge(shp, maxtemp2017, by="objectid")
write.csv(shp@data, file="UKLSOA2017maxtempMONTH.csv", row.names = FALSE)

