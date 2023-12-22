###第二節：合併資料(1)
#現在讓我們回到上節課所處理的資料檔，這份資料檔最討厭的地方是經常會有重複，所以我們可以使用自訂函數將整個資料整理的過程給打包起來：
#這是那些測站在早上5點半的時候所測得的汙染物濃度

#這是原始的處理程式碼：
dat1 = read.csv("data2_1.csv", header = TRUE, fileEncoding = 'CP950')
dat1.clean = dat1[duplicated(dat1) == FALSE,]
dat1.clean
