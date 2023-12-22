###�ĤT�`�G��Ÿ���ഫ(1)
#�o����ƬO�y�z�C�ӤH�e�f���p���ɮסA�ڭ̧Ʊ�N�o����������ର���� �u
dat = read.csv("data3_1.csv", header = TRUE, fileEncoding = 'CP950')
head(dat, 10)
#�ڭ̪��ؼЬO�N�ɮ��ഫ���o�˪��榡
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
