data_mhs=read.delim("Prak Prob Stat/Data prob&statistika (Jawaban).csv", sep = ",")
View(data_mhs)

mhs <- data_mhs[data_mhs$tinggi.badan,]
View(data_mhs)

data_mhs$`tinggi badan` <- ifelse(data_mhs$`tinggi badan` > 160, c("tinggi"), c("pendek"))
View(data_mhs)

data_mhs$jurusan <- ifelse(data_mhs$`tinggi badan` > 160, c("infor23"))
View(data_mhs)
data_mhs$fakultas <- ifelse(data_mhs$`tinggi badan` > 160, c("FTI"))
View(data_mhs)

data_mhs$fakultas<-NULL

data_mhs.kolom1dan2 <- data_mhs[,1:2]
View(data_mhs.kolom1dan2)
data_mhs.kolom3dan4 <- data_mhs[,3:4]
View(data_mhs.kolom3dan4)
data_mhs.kolom1sd4<-cbind(data_mhs.kolom1dan2, data_mhs.kolom3dan4)
View(data_mhs.kolom1sd4)

data_mhs.baris1sd5<- data_mhs[1:5,]
data_mhs.baris25sd30<- data_mhs[25:30,]
data_mhs.baris1sd30<-rbind(data_mhs.baris1sd5, data_mhs.baris25sd30)
View(data_mhs.baris1sd30)

data_mhs.sort<-data_mhs[order(data_mhs$waktu),]
View(data_mhs.sort)
