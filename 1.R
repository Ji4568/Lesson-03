###�Ĥ@�`�G�ۭq���(1)
#�ثe�ڭ̤w�g�Ƿ|�F�\�h�򥻪�R�y���ޥ��A���ڭ̺C�C�o�{�ڭ̷Q�����Ʊ������ݭn�n�X��{���X�~��F��A�ڭ̦��S���i��²�ƥL�O?
#�ۭq��ƬO�@�ӲզX�����⦡���n��k�A�|�Ҩӻ��ڭ̸g�`�Q�n��ǥͪ����Z���[���A�̱`�Ϊ���q�O�u�}�ڸ����H10�v�A�ڭ̥i�H���Ƽg���o�ˡG

add_score = function (x) {
  sqrt(x)*10
}

add_score(36)

add_score(58)

#�ۭq���(2)
#�Ʋߤ@�U�ڭ̲ĤG�`�ұШ�O�i�ǩ_�ƦC�A�L�����k�p�U�G
x = c(1, 1)

for (i in 3:20) {
  x[i] = x[i-1] + x[i-2]
}

x

#�J���[��@�U�ڭ̪��{���A�䤤20�O�ӥi�ܪ��Ʀr�A�ڭ̱N��Ԩ�̥~��
last.seq = 20
#�o�ˬO���O�N�i�H��X���@�Ө�ƤF?
  Fibonacci = function (last.seq) {
    x = c(1, 1)
    
    for (i in 3:last.seq) {
      x[i] = x[i-1] + x[i-2]
    }
    
    x
  }

Fibonacci(10)

Fibonacci(20)

#�ۭq���(3)
#�t�~�A���w�ڭ̧Ʊ��X�i�O�i�ǩ_�ƦC�A���ϥΪ̫��w�_�l�ȡA�ۭq��Ƥ]�ह�\�o�˪��\��G
Fibonacci = function (a, b, last.seq) {
  x = c(a, b)
  
  for (i in 3:last.seq) {
    x[i] = x[i-1] + x[i-2]
  }
  
  x
}

Fibonacci(1, 1, 20)

Fibonacci(-3, 2, 20)

#�ۭq���(4)
#��M�A�b��誺��Ƥ��A�� last.seq < 3 �ɷ|���Ϳ��~
Fibonacci(2, 4, 2)
#�ҥH�A�ڭ̻ݭn�b��Ƥ��[�J�T�{length�j�p���קK���~
#���n�ѰO��ơucat()�v��P�ϥΪ̷��q

Fibonacci = function (a, b, last.seq) {
  if (last.seq < 3) {
    cat("last.seq�����j�󵥩�3�C")
  } else {
    x = c(a, b)
    
    for (i in 3:last.seq) {
      x[i] = x[i-1] + x[i-2]
    }
    
    x
  }
}
#�{�b��last.seq < 3�ɴN�|���Xĵ�i
Fibonacci(2, 4, 2)
