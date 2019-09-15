chicago<-read.csv("C:/Users/Jessi/OneDrive/×ÀÃæ/ADS/Week 1/Chicago2013.csv")
head(chicago)#check the 5 information on the top of the table
table(chicago$Country)
sample(5,10,replace = TRUE)
help(sample)

man<-rnorm(45, 172, 7)
#rnorm is used to generate x(45) numbers around y(172), and the standard deviation is z(7)
women<-rnorm(55,158.5,6)
max(man,women)
min(man,women)
sum(man>163.5,women>163.5)

#birthday problem
#computing the overall probability of a shared birthday for n=26
p=0
for (i in 1:1000){
  #a<-sample(seq(as.Date('2000/01/01'),as.Date('2000/12/30'),by="days"),26)
  a<-sample(x = 1:365,26,replace = TRUE)
  c<-length(unique(a))
  if (c<length(a))
    p=p+1
  else 
    p=p
}
probability=p/1000


#Bonus
l<-array()
for (j in 1:50){
  p=0
  for (i in 1:1000){
    #a<-sample(seq(as.Date('2000/01/01'),as.Date('2000/12/30'),by="days"),j)
    a<-sample(1:365,j,replace=TRUE)
    c<-length(unique(a))
    #p=c(same/j*100,p)
    if (c<length(a))
      p=p+1
      #ever since there is a repitition, means there are at least two people have the same birthday
    else
      p=p
  }
  probability=p/1000
  l <-c(l,probability)
}
  
plot(l)
  
  

  
  
