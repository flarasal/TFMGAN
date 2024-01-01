library(InterSIM)
prop<-c(0.8 ,0.2)
effect<-5
sim.data <- InterSIM(n.sample=20000, cluster.sample.prop = prop,
                     delta.methyl=effect, delta.expr=effect, delta.protein=effect,
                     p.DMP=0.2, p.DEG=NULL, p.DEP=NULL,
                     sigma.methyl=NULL, sigma.expr=NULL, sigma.protein=NULL,
                     cor.methyl.expr=NULL, cor.expr.protein=NULL,
                     do.plot=FALSE, sample.cluster=TRUE, feature.cluster=TRUE)
sim.methyl <- sim.data$dat.methyl
sim.expr <- sim.data$dat.expr
sim.protein <- sim.data$dat.protein
sim.asignment <- sim.data$clustering.assignment
write.csv(sim.methyl, "/home/fede/Documents/BIOINFO/UOC/TFM/methyl20K.csv")
write.csv(sim.expr, "/home/fede/Documents/BIOINFO/UOC/TFM/expr20K.csv")
write.csv(sim.asignment, "/home/fede/Documents/BIOINFO/UOC/TFM/assign20K.csv")