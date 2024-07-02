import cv2
import os
import numpy as np
import os.path as osp
from tqdm import tqdm

img_dir = '/data4t2/alchera_fourth/posod_reid_data/01.img/04_cam004/park/group'
img_list = os.listdir(img_dir)

img_list = filter(lambda x: True if x.split('_')[-2]=='005' else False, img_list)
img_list = sorted(img_list, key=lambda x:x.split('_')[-1])

writer = cv2.VideoWriter('videos/test.mp4', cv2.VideoWriter_fourcc(*'mp4v'), 30., (2592, 1944))

for p in tqdm(img_list):
    img = cv2.imread(osp.join(img_dir, p))
    writer.write(img)

writer.release()