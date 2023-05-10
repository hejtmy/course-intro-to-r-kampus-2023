?read.table
read.table("data/midlife-data-paper.csv")
read.table("data/midlife-data-paper.csv")
getwd()

read.table("C:/Cyberspacelab/Courses/course-intro-to-r-kampus-2023/data/midlife-data-paper.csv")

df_midlife <- read.table("https://raw.githubusercontent.com/hejtmy/course-intro-to-r-kampus-2023/main/data/midlife-data-paper.csv", sep=",", header=TRUE)

## Accessing data frames ------
df_midlife <- read.table("data/midlife-data-paper.csv", sep=",", header=TRUE)

which(df_midlife$vek > 50)
table(df_midlife$pohl)
which(df_midlife$pohl == "M")

## Selection ----
# dataframe[ROWs, COLUMNs]

df_midlife[1,]
df_midlife[,1]

# Table with only people older than 50
df_midlife[which(df_midlife$vek > 50),]
df_midlife[df_midlife$vek > 50,]

df_above50 <- df_midlife[df_midlife$vek > 50,]

df_above50F <- df_midlife[(df_midlife$vek > 50) & (df_midlife$pohl == "F"), ]

table(df_above50F$pohl)
df_above50F$vek > 50

## Vector maths -----

sum(df_above50F$vek <= 50)

mean
median
sd
var
summary(df_above50F[,69:75])

## Outlier removal ------
df_midlife
# calculate sd swls satisfaction
mean_swls <- mean(df_midlife$swls_s_satifaction, na.rm = TRUE)
# calculate mean swls satisfaction
sd_swls <- sd(df_midlife$swls_s_satifaction, na.rm = TRUE)
# calculate how many SD away from the mean is each value 
#Z = (value - mean)/SD
swls_z <- (df_midlife$swls_s_satifaction - mean_swls)/sd_swls

df_midlife$swls_z <- swls_z
nrow(df_midlife[abs(df_midlife$swls_z) <= 3, ])
