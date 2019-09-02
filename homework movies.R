getwd()
setwd( "C:\\Users\\angelineamber\\Desktop\\R Tutorial\\P2-Section6-Homework-Data")
read.csv("Section6-Homework-Data.csv")
mov<-read.csv("Section6-Homework-Data.csv")
mov
head(mov)
str(mov)
names(mov)
mov$Genre
levels(mov$Genre)
summary(mov$Genre)
summary(mov$Day.of.Week)
# we only need day.of.week
#genre
#Studio
summary(mov)
install.packages("ggplot2")
library(ggplot2)
names(mov)
#use geom_histogram() to show numerical variable distribution
ggplot(data = mov, aes(Day.of.Week))+geom_bar(fill="blue")
#to filter 
# ??? filter<- mov[mov$Genre == c("action","adventure","animation" ),]
str(mov)
filteraction2<- mov[mov$Genre == "action",]
filteradventure2<- mov[mov$Genre == "adventure",]
filteranimation2<- mov[mov$Genre == "animation",]
#my unique code
filter3genre2<- mov[(mov$Genre =="action")|(mov$Genre == "adventure")|(mov$Genre == "animation"),]


#filt is a logical vector
filtaction1<- mov$Genre == "action"
filtadventure1<- mov$Genre == "adventure"
filtanimation1<- mov$Genre == "animation"
filter3genre1<-mov[c(filtaction1, filtadventure1, filtanimation1),]

#filter in tutorial, filt is a logical statement
filtgenre<- mov$Genre == "action"| mov$Genre == "adventure"| mov$Genre == "animation"
filtgenre
summary(filtgenre)
mov2 <- mov[filtgenre,]

#filter in tutorial for studio
summary(mov$Studio)
filtstudio<- mov$Studio %in% c("Buena Vista Studios", 
                          "Fox", "Paramount Pictures", "Sony", 
                          "Universal", "WB")
filtgenre
filtstudio
mov3<- mov[filtgenre & filtstudio,]

#prepare the plots, data and aesthetics
mov3$Gross...US
mov3$Budget...mill.
p<- ggplot(data=mov3, aes(x=Genre, y=Gross...US))
p+geom_point()


p<- ggplot(data=mov3, aes(x=Genre, y=Gross...US), outlier.colour=NA)
p+geom_jitter(aes(size=Budget...mill., color=Studio))+geom_boxplot(alpha=0.5)

p<- ggplot(data=mov3, aes(x=Genre, y=Gross...US), outlier.colour=NA)
q<-p+geom_jitter(aes(size=Budget...mill., color=Studio))+geom_boxplot(alpha=0.5)
q

library(ggplot2)
#add non data ink
#Non-data ink
q <- q +
  xlab("Genre") + #x axis title
  ylab("Gross % US") + #y axis title
  ggtitle("Domestic Gross % by Genre") #plot title
q

#HINT: for the next part use ?theme if you need to 
#refresh which parameters are responsible for what

#Theme
qfinish <- q + 
  theme(
    #this is a shortcut to alter ALL text elements at once:
    text = element_text(family="ComicSB"),
    
    #Axes titles:
    axis.title.x = element_text(colour="Blue", size=15),
    axis.title.y = element_text(colour="Blue", size=15),
    
    #Axes texts:
    axis.text.x = element_text(size=15),
    axis.text.y = element_text(size=15),  
    
    #Plot title:
    plot.title = element_text(colour="Black",
                              size=15),
    
    #Legend title:
    legend.title = element_text(size=15),
    
    #Legend text
    legend.text = element_text(size=15)
  )
qfinish

windowsFonts(Times=windowsFont("TT Times New Roman"))
windowsFonts(ComicSB=windowsFont("TT Comic Sans MS"))
#Final touch. We haven't discussed this in the course,
#However this is how you can change individual legend titles:
#???qfinish$labels$size = "Budget $M"


#Well done!