ddir = "C:/dev/kaggle/recruit/raw_data"
fpath = file.path(ddir, "air_visit_data.csv")

df = read.csv(fpath)
head(df)