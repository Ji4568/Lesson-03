###練習2：利用迴圈合併檔案並寫出
#我們假定剛剛的過程是一個資料處理過程是經常要做的，我們先假定檔案命名有一定的規律，都是「data2_i.csv」，而i代表著一個可變動的數字
#下面這串函數可以依序慢慢合併檔案，但是我希望大家把他改寫成迴圈形式，這樣我們才有可能一次處理上千個檔案
#這邊會用到新函數「paste()」

i = 1
data_clean.start = data_pipeline(paste("data2_", i, ".csv", sep = ""))
data.simple.start = data_clean.start[,c("s_d0", "school")]

i = 2
data_clean.continue = data_pipeline(paste("data2_", i, ".csv", sep = ""))
data.simple.continue = data_clean.continue[,c("s_d0", "school")]
data.simple.start = merge(data.simple.start, data.simple.continue, by = "school", all = TRUE)

i = 3
data_clean.continue = data_pipeline(paste("data2_", i, ".csv", sep = ""))
data.simple.continue = data_clean.continue[,c("s_d0", "school")]
data.simple.start = merge(data.simple.start, data.simple.continue, by = "school", all = TRUE)

i = 4
data_clean.continue = data_pipeline(paste("data2_", i, ".csv", sep = ""))
data.simple.continue = data_clean.continue[,c("s_d0", "school")]
data.simple.start = merge(data.simple.start, data.simple.continue, by = "school", all = TRUE)

head(data.simple.start)

###練習2答案
#能合併的地方不多，注意if和else的使用：
for (i in 1:4) {
  if (i == 1) {
    data_clean.start = data_pipeline(paste("data2_", i, ".csv", sep = ""))
    data.simple.start = data_clean.start[,c("s_d0", "school")]
  } else {
    data_clean.continue = data_pipeline(paste("data2_", i, ".csv", sep = ""))
    data.simple.continue = data_clean.continue[,c("s_d0", "school")]
    data.simple.start = merge(data.simple.start, data.simple.continue, by = "school", all = TRUE)
  }
}

colnames(data.simple.start) = c('school', paste('s_d0.', 1:4, sep = ""))

head(data.simple.start)
