#!bin/bash
pcd="/"
# bash movefiles.sh "$1"
# bash sweep.sh "$1$pcd"
# bash pcd2xyz.sh "$1$pcd"
# bash filterpcd.sh "$1$pcd"
# bash compute_normals.sh "$1$pcd"
bash normal2rgb.sh "$1$pcd"
bash pcd2image.sh "$1$pcd"
# bash movefiles_after.sh "$1$pcd"
# mkdir "$1adepth3/test"
# mkdir "$1adepth3/train"
# # mkdir "$1augmented/test"
# # mkdir "$1augmented/train"
# mkdir "$1normalimages/test"
# mkdir "$1normalimages/train"
# python3 create_train.py --dir="$1adepth3/"
# python3 create_train.py --dir="$1normalimages/"
# # python3 create_train.py --dir="$1augmented/"
# mkdir "$1dataset"
# # mkdir "$1dataset/depthir"
# mkdir "$1dataset/depth3"
# # mkdir "$1dataset/augmented"
# mkdir "$1dataset/normalimages"
# mv "$1adepth3/test/" "$1dataset/depth3/test/"
# mv "$1adepth3/train/" "$1dataset/depth3/train/"
# # mv "$1augmented/test/" "$1dataset/augmented/test/"
# # mv "$1augmented/train/" "$1dataset/augmented/train/"
# mv "$1normalimages/test/" "$1dataset/normalimages/test/"
# mv "$1normalimages/train/" "$1dataset/normalimages/train/"
# cd "$1"
# zip -r "dataset.zip" "dataset/"