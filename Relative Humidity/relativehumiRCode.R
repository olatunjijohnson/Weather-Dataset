setwd("//lancs/homes/05/johnsono/Downloads/Relative Humidity")
require(raster)
require(rgdal)
require(maptools)

##################################################### Monthly relativehum
################################## 2010 #########
shp <- readOGR(dsn = "C:/Users/johnsono/Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales/.", layer = "Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales")
rast <- brick("hurs_hadukgrid_uk_1km_mon_201001-201012.nc")
crs(rast) <- proj4string(shp)
relativehum2010 <- extract(rast, as(shp,"SpatialPolygons"), fun=mean, na.rm=TRUE, df=T, layer=1)
colnames(relativehum2010)[1] <- "objectid"
source("../combine_spdf_df.R")
shp@data <- combine_spdf_df(shp, relativehum2010, by="objectid")
write.csv(shp@data, file="UKLSOA2010relativehumMONTH.csv", row.names = FALSE)

################################## 2011 #########
shp <- readOGR(dsn = "C:/Users/johnsono/Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales/.", layer = "Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales")
rast <- brick("hurs_hadukgrid_uk_1km_mon_201101-201112.nc")
crs(rast) <- proj4string(shp)
relativehum2011 <- extract(rast, as(shp,"SpatialPolygons"), fun=mean, na.rm=TRUE, df=T, layer=1)
colnames(relativehum2011)[1] <- "objectid"
shp <- merge(shp, relativehum2011, by="objectid")
write.csv(shp@data, file="UKLSOA2011relativehumMONTH.csv", row.names = FALSE)

################################## 2012 #########
shp <- readOGR(dsn = "C:/Users/johnsono/Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales/.", layer = "Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales")
rast <- brick("hurs_hadukgrid_uk_1km_mon_201201-201212.nc")
crs(rast) <- proj4string(shp)
relativehum2012 <- extract(rast, as(shp,"SpatialPolygons"), fun=mean, na.rm=TRUE, df=T, layer=1)
colnames(relativehum2012)[1] <- "objectid"
shp <- merge(shp, relativehum2012, by="objectid")
write.csv(shp@data, file="UKLSOA2012relativehumMONTH.csv", row.names = FALSE)

################################## 2013 #########
shp <- readOGR(dsn = "C:/Users/johnsono/Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales/.", layer = "Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales")
rast <- brick("hurs_hadukgrid_uk_1km_mon_201301-201312.nc")
crs(rast) <- proj4string(shp)
relativehum2013 <- extract(rast, as(shp,"SpatialPolygons"), fun=mean, na.rm=TRUE, df=T, layer=1)
colnames(relativehum2013)[1] <- "objectid"
shp <- merge(shp, relativehum2013, by="objectid")
write.csv(shp@data, file="UKLSOA2013relativehumMONTH.csv", row.names = FALSE)

################################## 2014 #########
shp <- readOGR(dsn = "C:/Users/johnsono/Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales/.", layer = "Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales")
rast <- brick("hurs_hadukgrid_uk_1km_mon_201401-201412.nc")
crs(rast) <- proj4string(shp)
relativehum2014 <- extract(rast, as(shp,"SpatialPolygons"), fun=mean, na.rm=TRUE, df=T, layer=1)
colnames(relativehum2014)[1] <- "objectid"
shp <- merge(shp, relativehum2014, by="objectid")
write.csv(shp@data, file="UKLSOA2014relativehumMONTH.csv", row.names = FALSE)

################################## 2015 #########
shp <- readOGR(dsn = "C:/Users/johnsono/Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales/.", layer = "Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales")
rast <- brick("hurs_hadukgrid_uk_1km_mon_201501-201512.nc")
crs(rast) <- proj4string(shp)
relativehum2015 <- extract(rast, as(shp,"SpatialPolygons"), fun=mean, na.rm=TRUE, df=T, layer=1)
colnames(relativehum2015)[1] <- "objectid"
shp <- merge(shp, relativehum2015, by="objectid")
write.csv(shp@data, file="UKLSOA2015relativehumMONTH.csv", row.names = FALSE)

################################## 2016 #########
shp <- readOGR(dsn = "C:/Users/johnsono/Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales/.", layer = "Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales")
rast <- brick("hurs_hadukgrid_uk_1km_mon_201601-201612.nc")
crs(rast) <- proj4string(shp)
relativehum2016 <- extract(rast, as(shp,"SpatialPolygons"), fun=mean, na.rm=TRUE, df=T, layer=1)
colnames(relativehum2016)[1] <- "objectid"
shp <- merge(shp, relativehum2015, by="objectid")
write.csv(shp@data, file="UKLSOA2016relativehumMONTH.csv", row.names = FALSE)

################################## 2017 #########
shp <- readOGR(dsn = "C:/Users/johnsono/Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales/.", layer = "Lower_Layer_Super_Output_Areas_December_2011_Full_Clipped__Boundaries_in_England_and_Wales")
rast <- brick("hurs_hadukgrid_uk_1km_mon_201701-201712.nc")
crs(rast) <- proj4string(shp)
relativehum2017 <- extract(rast, as(shp,"SpatialPolygons"), fun=mean, na.rm=TRUE, df=T, layer=1)
colnames(relativehum2017)[1] <- "objectid"
shp <- merge(shp, relativehum2017, by="objectid")
write.csv(shp@data, file="UKLSOA2017relativehumMONTH.csv", row.names = FALSE)

