combine_spdf_df <- function(spdf, df, by){
  data.frame(spdf@data, df[match(spdf@data[, by], df[, by]), -1])
}


