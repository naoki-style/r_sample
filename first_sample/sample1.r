in1 <- scan("sample1.dat", list(0, 0))
in1
height <- in1[[1]]
weight <- in1[[2]]

in2 <- matrix(scan("sample1.dat"),ncol=2,byrow=T)
in2
in2[[1]]
in2[,1]
in2[1,]
in2[[1,2]]
apply(in2,2,mean)

mean(height)
var(height)
sd(height)

gender <- c(rep("M",time=16),rep("F",time=14))
gender

tapply(height,gender,mean)
tapply(weight,gender,range)

table(gender)
table(height)

genderf <- factor(gender)
gender
genderf

phys.df <- data.frame(pheight=height,pweight=weight,pgender=genderf)
phys.df
phys.df$pheight

summary(phys.df)
attach(phys.df)
pheight
detach(phys.df)

phys <- read.table("sample1.csv",header=T,sep=",")
phys

pdf("hist_height.pdf")
hist(height)
dev.off()
pdf("hist_height_breads_3.pdf")
hist(height,breaks=3)
dev.off()

op <- par(mfrow=c(1,2))
pdf("hist_height2.pdf")
hist(height)
dev.off()
pdf("weight_height2.pdf")
hist(weight)
dev.off()
pdf("height_br_5_col_lightblue_border_pink.pdf")
hist(height, br=5,col="lightblue",border="pink")
dev.off()
par(op)
str(hist(height,plot=F))

pdf("boxplot_height.pdf")
boxplot(height)
dev.off()
pdf("boxplot_height_..._.pdf")
boxplot(height[(gender=="M")],height[(gender=="F")],names.x=c("Male","Female"))
dev.off()

pdf("plox_height.pdf")
plot(height)
dev.off()
pdf("plot_seq_1_lenght_height_height_type_b_xlab.pdf")
plot(seq(1,length(height)),height,type="b",xlab="")
dev.off()
pdf("plot_height_weight.pdf")
plot(height,weight)
dev.off()

pdf("boxplot_pheight_pgender.pdf")
boxplot(pheight~pgender,data=phys.df)
dev.off()
pdf("plot_genderf.pdf")
plot(genderf)
dev.off()
pdf("plot_pweight_pheight.pdf")
plot(pweight~pheight,data=phys.df)
dev.off()
