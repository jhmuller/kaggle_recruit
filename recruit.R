ddir = "C:/Users/jmull/dev/kaggle/recruit/raw_data"
fpath = file.path(ddir, "air_visit_info.csv")

df = read.csv(fpath)
head(df)