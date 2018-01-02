# loading the required packages
library(ggplot2)
library(ggmap)

ddir = "C:/dev/kaggle/recruit/raw_data"
fpath = file.path(ddir, "air_store_info.csv")

df = read.csv(fpath)
head(df)

# getting the map
mapgilbert <- get_map(location = c(lon = median(df$longitude), 
                                   lat = median(df$latitude)), 
                      zoom = 6,
                      maptype = "roadmap", scale = 2)

# plotting the map with some points on it
ggmap(mapgilbert) +
  geom_point(data = df, aes(x = longitude, 
                            y = latitude, 
                            fill = "red", 
                            alpha = 0.8), size = 4, shape = 19) +
  guides(fill=FALSE, alpha=FALSE, size=FALSE)