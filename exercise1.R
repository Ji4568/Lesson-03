###�m��1�G��Ƨ�M���
#�ĤG�`�Ҫ��M���Ƶ{���X�۷������A�ЧA�յ۱N�䥴�]���@�Ӧۭq��ơA���ϥΪ̫��w�n�M��u�h�֥H�U����ơv
#�O���A�Y�Ǫ��p�|����error�A�ЧA�w������error������

#����{���X�p�U�G

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

###�m��1����
#�|�X�{���~���a��D�n�N�Omax.x��J2�H�U���Ʀr�A�H�ΥL��������ơG
find_prime_number = function (max.x) {
  if (max.x < 2) {
    message("max.x�����j�󵥩�2�C")
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