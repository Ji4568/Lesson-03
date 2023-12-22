###練習1：質數找尋函數
#第二節課的尋找質數程式碼相當的長，請你試著將其打包成一個自訂函數，讓使用者指定要尋找「多少以下的質數」
#記住，某些狀況會產生error，請你預先防止error的產生

#完整程式碼如下：

max.x = 100

x = 2:max.x
answer.x = rep(TRUE, max.x-1)

for (i in 2:(max.x-1)) {
  n = x[i]
  chech_n = as.integer(sqrt(n))
  for (j in 1:chech_n) {
    if (answer.x[j] == TRUE) {
      if (x[i] %% x[j] == 0) {
        answer.x[i] = FALSE
        break
      }
    }
  }
}

x[answer.x]

###練習1答案
#會出現錯誤的地方主要就是max.x輸入2以下的數字，以及他必須為整數：
find_prime_number = function (max.x) {
  if (max.x < 2) {
    message("max.x必須大於等於2。")
  } else {
    max.x = as.integer(max.x)
    x = 2:max.x
    answer.x = rep(TRUE, max.x-1)
    for (i in 2:(max.x-1)) {
      n = x[i]
      chech_n = as.integer(sqrt(n))
      for (j in 1:chech_n) {
        if (answer.x[j] == TRUE) {
          if (x[i] %% x[j] == 0) {
            answer.x[i] = FALSE
            break
          }
        }
      }
    }
    x[answer.x]
  }
}

find_prime_number(100)
