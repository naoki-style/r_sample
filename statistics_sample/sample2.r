sample2 <- read.table("sample2.csv", header=T, sep=",")
sample2
lm(separation ~ travel, data=sample2)

sample2.lm <- lm(separation ~ travel, data=sample2)
summary(sample2.lm)
coef(sample2.lm)

names(sample2.lm)
sam.lm.summary <- summary(sample2.lm)
names(sam.lm.summary)
sam.lm.summary$residuals
resid(sample2.lm)

plot(resid(sample2.lm))
qqnorm(resid(sample2.lm))

sample2.lm2 <- update(sample2.lm, .~.+I(travel^2))
summary(sample2.lm2)
