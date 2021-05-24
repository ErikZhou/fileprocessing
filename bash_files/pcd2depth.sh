#!bin/bash
builddir=$PWD'/../build/'
default_dir=/media/rambo/ssd2/Szilard/nyu_v2_filter/dataset_plane/pcd_vox/

if [[ ! -z "$1" ]] 
then 
    default_dir=$1
fi
cd $default_dir

for filename in *.pcd; do
    cd $builddir
    # path, height, width, cameratype
    ./pcd2depth $default_dir$filename 480 640 nyu
done