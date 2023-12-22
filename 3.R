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

#初級資料轉換(3)
#在最開始的時候，我們要先對這份資料表做初步分析。這份資料表有幾個人？有幾種可能的疾病？
#我們很明顯是需要用到函數「levels()」以及函數「length()」的組合
#而函數「levels()」僅能用在因子向量上，所以我們要先確認ID及Disease的屬性
class(dat[,1])
class(dat[,2])
#很幸運的，在檔案讀進來的時候兩者就都已經是因子向量了，如果不是的話，記得要使用函數「as.factor()」進行轉換
dat[,1] = as.factor(dat[,1])
dat[,2] = as.factor(dat[,2])
#接著，我們就能用函數「levels()」取得檔案中所有曾經出現過的人，以及所有曾經出現過的疾病
levels.sample = levels(dat[,1])
levels.sample
n.sample = length(levels.sample)
n.sample
levels.disease = levels(dat[,2])
levels.disease
n.disease = length(levels.disease)
n.disease

#初級資料轉換(4)
#我們發現共有24個人，總共有4種疾病，因此我們想要創造一個24*5的矩陣，其中第一欄放ID，其他欄位分別描述4種疾病的狀態
#這裡我們會用到函數「matrix」做一個空的矩陣，在最開始的時候我們可以先在矩陣內都填上0(填什麼並不重要，因為等等都會覆蓋掉)
new.dat = matrix(0, nrow = n.sample, ncol = n.disease+1)
colnames(new.dat) = c("ID", levels.disease)
new.dat[,1] = levels.sample
new.dat
