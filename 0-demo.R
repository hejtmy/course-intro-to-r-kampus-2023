library(ggplot2)
df_data <- read.table("data/midlife-data-paper.csv", sep=",", header = TRUE)
str(df_data)
summary(df_data)

ggplot(df_data, aes(swls_s_satifaction)) +
  geom_histogram()

ggplot(df_data, aes(pohl, swls_s_satifaction, fill = pohl)) +
  geom_boxplot()
