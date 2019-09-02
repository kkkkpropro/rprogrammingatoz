rnorm(5, mean=0, sd=1)
rnorm(5)
rnorm(100)

counter <- 0
for(i in rnorm(100)){
  if (i>-1 & i <1){counter <- counter+1}
   }
counter
counter/100

#compare to 68.2% the expected value

counter <- 0
for(i in rnorm(1000000)){
if (i>-1 & i <1){counter <- counter+1}
}
counter
counter/1000000

#use variable N
N<-1000000
counter <- 0
for(i in rnorm(N)){
  if (i>-1 & i <1){counter <- counter+1}
}
counter
counter/N

getwd()
setwd("C:/Users/angelineamber/Desktop/R Tutorial")
