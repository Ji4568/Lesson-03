###第一節：自訂函數(1)
#目前我們已經學會了許多基本的R語言技巧，但我們慢慢發現我們想做的事情往往需要好幾行程式碼才能達到，我們有沒有可能簡化他呢?
#自訂函數是一個組合複雜算式的好方法，舉例來說我們經常想要對學生的成績做加分，最常用的手段是「開根號乘以10」，我們可以把函數寫成這樣：

add_score = function (x) {
  sqrt(x)*10
}

add_score(36)

add_score(58)

#自訂函數(2)
#複習一下我們第二節課教到費波納奇數列，他的做法如下：
x = c(1, 1)

for (i in 3:20) {
  x[i] = x[i-1] + x[i-2]
}

x

#仔細觀察一下我們的程式，其中20是個可變的數字，我們將其拉到最外面
last.seq = 20
#這樣是不是就可以整合成一個函數了?
  Fibonacci = function (last.seq) {
    x = c(1, 1)
    
    for (i in 3:last.seq) {
      x[i] = x[i-1] + x[i-2]
    }
    
    x
  }

Fibonacci(10)

Fibonacci(20)

#自訂函數(3)
#另外，假定我們希望擴展費波納奇數列，讓使用者指定起始值，自訂函數也能允許這樣的功能：
Fibonacci = function (a, b, last.seq) {
  x = c(a, b)
  
  for (i in 3:last.seq) {
    x[i] = x[i-1] + x[i-2]
  }
  
  x
}

Fibonacci(1, 1, 20)

Fibonacci(-3, 2, 20)

#自訂函數(4)
#顯然，在剛剛的函數中，當 last.seq < 3 時會產生錯誤
Fibonacci(2, 4, 2)
#所以，我們需要在函數中加入確認length大小而避免錯誤
#不要忘記函數「cat()」能與使用者溝通

Fibonacci = function (a, b, last.seq) {
  if (last.seq < 3) {
    cat("last.seq必須大於等於3。")
  } else {
    x = c(a, b)
    
    for (i in 3:last.seq) {
      x[i] = x[i-1] + x[i-2]
    }
    
    x
  }
}
#現在當last.seq < 3時就會提出警告
Fibonacci(2, 4, 2)

