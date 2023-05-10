library(ggplot2)
library(dplyr)

df_data <- read.table("data/midlife-data-paper.csv", sep=",", header = TRUE)

str(df_data)
summary(df_data)
dplyr::glimpse(df_data)

ggplot(data=df_data, aes(x = swls_s_satifaction)) +
  geom_histogram()

ggplot(data=df_data, aes(x = cesd_s_total)) +
  geom_histogram()

ggplot(df_data, aes(x=pohl, y=cesd_s_total, fill = pohl)) +
  geom_boxplot()
