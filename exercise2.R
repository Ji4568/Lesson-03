###�m��2�G�Q�ΰj��X���ɮרüg�X
#�ڭ̰��w��誺�L�{�O�@�Ӹ�ƳB�z�L�{�O�g�`�n�����A�ڭ̥����w�ɮשR�W���@�w���W�ߡA���O�udata2_i.csv�v�A��i�N���ۤ@�ӥi�ܰʪ��Ʀr
#�U���o���ƥi�H�̧ǺC�C�X���ɮסA���O�ڧƱ�j�a��L��g���j��Φ��A�o�˧ڭ̤~���i��@���B�z�W�d���ɮ�
#�o��|�Ψ�s��ơupaste()�v

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

###�m��2����
#��X�֪��a�褣�h�A�`�Nif�Melse���ϥΡG
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