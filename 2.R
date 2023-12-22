###�ĤG�`�G�X�ָ��(1)
#�{�b���ڭ̦^��W�`�ҩҳB�z������ɡA�o������ɳ̰Q�����a��O�g�`�|�����ơA�ҥH�ڭ̥i�H�ϥΦۭq��ƱN��Ӹ�ƾ�z���L�{�����]�_�ӡG
#�o�O���Ǵ����b���W5�I�b���ɭԩҴ��o�����V���@��

#�o�O��l���B�z�{���X�G
dat1 = read.csv("data2_1.csv", header = TRUE, fileEncoding = 'CP950')
dat1.clean = dat1[duplicated(dat1) == FALSE,]
dat1.clean

#�X�ָ��(2)
#�z�L�ڭ̭��Ǫ��ۭq��ƥ\��A�ڭ̥i�H�N�o��ӹL�{��X�_�ӡG
data_pipeline = function (file.path) {
  dat1 = read.csv(file.path, header = TRUE, fileEncoding = 'CP950')
  dat1.clean = dat1[duplicated(dat1) == FALSE,]
  dat1.clean
}

data1_clean <- data_pipeline("data2_1.csv")
head(data1_clean)

#�X�ָ��(3)
#�o�O���Ǵ����b���W7�I���ɭԩҴ��o�����V���@��
#�ڭ̨ӧQ�έ�誺�ۭq��ƪ����B�z
data2_clean <- data_pipeline("data2_2.csv")
head(data2_clean)

#�X�ָ��(4)
#�{�b�A�ڭ̧Ʊ�N���W7�I���ȻP���W5�I�b���Ȱ��X�֡A���ɻݭn�@�ӷs��ơumerge()�v�A����Ư����U�ڭ̧����ɮר̾گ����ܼư��X�W
#�U���O�q���|��X���ɮת����L�{
data1_clean <- data_pipeline("data2_1.csv")
data2_clean <- data_pipeline("data2_2.csv")
merge.dat = merge(data1_clean, data2_clean, by = "school", all = TRUE)
head(merge.dat)


