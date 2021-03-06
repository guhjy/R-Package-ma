## Simple demonstration with one numeric predictor, Canadian wage data

library(ma)
data(cps71)
attach(cps71)

model <- lm.ma(logwage~age,
               compute.anova=TRUE,
               compute.anova.boot=TRUE,
               degree.min=TRUE)

summary(model)

par(mfrow=c(2,1))
plot(model,plot.data=TRUE,plot.ci=TRUE,plot.B=399)
plot(model,plot.deriv=TRUE,plot.ci=TRUE,plot.B=399)
