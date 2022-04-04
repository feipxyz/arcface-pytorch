# 准备数据
shuf data/cleaned_list.txt > data/all.list
head data/all.list -n 400000 > data/train.txt
tail data/all.list -n 55594 > data/val.txt

cp /content/drive/MyDrive/dataset/lfw-align-128.tar.gz data
tar -xvf data/lfw-align-128.tar.gz
