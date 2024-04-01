data_zahwa = read.delim("clipboard") 
View(data_zahwa)
zahwa <- data_zahwa[data_zahwa$Bedrooms==2,]  
View(zahwa)
zahwa$Bathrooms <- ifelse(zahwa$Bathrooms > 2, c("large"), c("small"))
View(zahwa)
zahwa$newvariable <- ifelse(zahwa$Offers > 2, c("large"), c("small")) 
View(zahwa)
zahwa$newvariable <- zahwa$Price/zahwa$SqFt
View(zahwa)
zahwa$newvariable<-NULL
data_zahwa.kolom1dan2 <- data_zahwa[,1:2] 
View(data_zahwa.kolom1dan2)
data_zahwa.kolom3dan4 <- data_zahwa[,3:4] 
View(data_zahwa.kolom3dan4)
data_zahwa.kolom1sd4<-cbind(data_zahwa.kolom1dan2, data_zahwa.kolom3dan4) 
View(data_zahwa.kolom1sd4)
data_zahwa.baris1sd3 <- data_zahwa[1:3,] 
data_zahwa.baris4sd6 <- data_zahwa[4:6,] 
data_zahwa.baris1sd6 <- rbind(data_zahwa.baris1sd3, data_zahwa.baris4sd6) 
View(data_zahwa.baris1sd6)
data_zahwa.sort<-data_zahwa[order(data_zahwa$Price),] 
View(data_zahwa.sort)

