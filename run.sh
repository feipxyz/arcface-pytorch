# 准备数据

# shuf cleaned_list.txt > all.list
# head all.list -n 400000 > train.txt
# tail all.list -n 55594 > val.txt

cd data
cp /content/drive/MyDrive/dataset/CASIA-WebFace-clean-up.zip .
unzip CASIA-WebFace-clean-up.zip 
rm CASIA-WebFace-clean-up.zip 

cp /content/drive/MyDrive/dataset/lfw-align-128.tar.gz .
tar -xvf lfw-align-128.tar.gz
rm lfw-align-128.tar.gz
cd -

# 准备预训练模型
mkdir checkpoints
cp /content/drive/MyDrive/model_facerecogniztion/resnet18_110.pth checkpoints/
