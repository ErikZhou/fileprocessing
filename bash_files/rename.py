
import os
import argparse
import shutil


parser = argparse.ArgumentParser(description='Process some integers.')
parser.add_argument('--dir', default="/media/rambo/ssd2/Szilard/nyu_v2_filter/dataset_plane/pcd_vox/",
                    help='the directory to the source files')
parser.add_argument('--ext', default=".pcd",
                    help='the extension of file')
args = parser.parse_args()

directory=args.dir

dlist=os.listdir(directory)
dlist.sort()
extension = args.ext

n=0
for filename in dlist:
    if filename.endswith(extension):
        number=f'{n:05d}'
        shutil.copy2(directory+filename,directory+number+extension)
        n=n+1
    else:
        continue

# f = open(directory+"filelist.txt", "r")
# for x in f:
#   shutil.copy2(directory+"rgb/"+x[:-1]+"_rgb.png",directory+x[:-1]+"_rgb.png")