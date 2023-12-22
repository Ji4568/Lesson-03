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

#初級資料轉換(2)
#這是我們第一次面對到比較複雜的案例，在開始之前我們要做的是先思考怎樣能達到我們想要的效果。
#請各位先回想在前面幾節課學過哪些函數、功能？我保證只使用已經學會的功能就足以應付這個問題了。

#1.函數「length()」

#2.函數「levels()」

#3.各式索引函數

#4.迴圈函數「for」

