###�m��3�G�����o���u�@
#���Ҧ��{���X�ѤW�ӤU�A�w�g��������o�i����F�A�{�b�ЧA�Q�ΰj��\���Ҧ��B�J�����A��24�ӤH���e�f���A���i�Jnew.dat��
levels.disease = levels(dat[,2])
levels.sample = levels(dat[,1])
new.dat = matrix(0, nrow = length(levels.sample), ncol = length(levels.disease)+1)
colnames(new.dat) = c("ID", levels.disease)
new.dat[,1] = levels.sample 
for (i in 1:length(levels.sample)) {
  new.dat[i,-1] = levels.disease%in%dat[dat[,1]==levels.sample[i],2]
}
new.dat = data.frame(new.dat)
new.dat

###�m��3����
#���I���N�O��L�]���j��I
levels.disease = levels(dat[,2])
levels.sample = levels(dat[,1])
new.dat = matrix(0, nrow = length(levels.sample), ncol = length(levels.disease)+1)
colnames(new.dat) = c("ID", levels.disease)
new.dat[,1] = levels.sample 
for (i in 1:length(levels.sample)) {
  new.dat[i,-1] = levels.disease%in%dat[dat[,1]==levels.sample[i],2]
}
new.dat = data.frame(new.dat)
new.dat
