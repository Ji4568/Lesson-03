###第二節：合併資料(1)
#現在讓我們回到上節課所處理的資料檔，這份資料檔最討厭的地方是經常會有重複，所以我們可以使用自訂函數將整個資料整理的過程給打包起來：
#這是那些測站在早上5點半的時候所測得的汙染物濃度

#這是原始的處理程式碼：
dat1 = read.csv("data2_1.csv", header = TRUE, fileEncoding = 'CP950')
dat1.clean = dat1[duplicated(dat1) == FALSE,]
dat1.clean

#合併資料(2)
#透過我們剛剛學的自訂函數功能，我們可以將這整個過程整合起來：
data_pipeline = function (file.path) {
  dat1 = read.csv(file.path, header = TRUE, fileEncoding = 'CP950')
  dat1.clean = dat1[duplicated(dat1) == FALSE,]
  dat1.clean
}

data1_clean <- data_pipeline("data2_1.csv")
head(data1_clean)

#合併資料(3)
#這是那些測站在早上7點的時候所測得的汙染物濃度
#我們來利用剛剛的自訂函數直接處理
data2_clean <- data_pipeline("data2_2.csv")
head(data2_clean)

#合併資料(4)
#現在，我們希望將早上7點的值與早上5點半的值做合併，此時需要一個新函數「merge()」，此函數能幫助我們把兩個檔案依據索引變數做擴增
#下面是從路徑到合併檔案的全過程
data1_clean <- data_pipeline("data2_1.csv")
data2_clean <- data_pipeline("data2_2.csv")
merge.dat = merge(data1_clean, data2_clean, by = "school", all = TRUE)
head(merge.dat)

#合併資料(5)
#假設我們有興趣的變數其實只有s_d0(這是PM2.5的濃度)，而剩下的我們假定我們並不感興趣，我們其實可以在檔案合併前，利用索引函數將dat1.clean及dat2.clean兩個檔案變成一個比較乾淨的檔案，然後再進行合併
#下面是從路徑到合併檔案的全過程
data1_clean <- data_pipeline("data2_1.csv")
data2_clean <- data_pipeline("data2_2.csv")
data1.simple = data1_clean[,c("s_d0", "school")]
data2.simple = data2_clean[,c("s_d0", "school")]
simple.merge.dat = merge(data1.simple, data2.simple, by = "school", all = TRUE)
head(simple.merge.dat)


