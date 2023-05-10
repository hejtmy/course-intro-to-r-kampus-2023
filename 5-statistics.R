df_midlife <- read.table("data/midlife-data-paper.csv", sep=",", header=TRUE)

# t.test
## Formula interface
t.test(swls_s_satifaction ~ pohl, data = df_midlife)
df_above50 <- df_midlife[df_midlife$vek > 50,]
t.test(swls_s_satifaction ~ pohl, data = df_above50)

wilcox.test(swls_s_satifaction ~ pohl, data = df_midlife)

# Correlation
cor.test(df_midlife$swls_s_satifaction, df_midlife$bfi2s_s_negative_emotionality)

cor(df_midlife[,69:75], use = "complete.obs")
View(cor(df_midlife[,5:75], use = "complete.obs"))

# linear model
lm(swls_s_satifaction ~ bfi2s_s_negative_emotionality, data = df_midlife)
summary(lm(swls_s_satifaction ~ bfi2s_s_negative_emotionality, data = df_midlife))

# anova
summary(aov(swls_s_satifaction ~ pohl, data = df_midlife))
