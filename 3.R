###第三節：初級資料轉換(1)
#這份資料是描述每個人疾病狀況的檔案，我們希望將這份直式資料轉為橫式資料 「
dat = read.csv("data3_1.csv", header = TRUE, fileEncoding = 'CP950')
head(dat, 10)
#我們的目標是將檔案轉換成這樣的格式
levels.disease = levels(dat[,2])
levels.sample = levels(dat[,1])
new.dat = matrix(0, nrow = length(levels.sample), ncol = length(levels.disease)+1)
colnames(new.dat) = c("ID", levels.disease)
new.dat[,1] = levels.sample 
for (i in 1:length(levels.sample)) {
  new.dat[i,-1] = levels.disease%in%dat[dat[,1]==levels.sample[i],2]
}
new.dat = data.frame(new.dat)
head(new.dat)

