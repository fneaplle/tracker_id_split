# demo_track
python tools/demo_track.py video -f exps/example/mot/yolox_x_ablation.py -c pretrained/bytetrack_ablation.pth.tar --fp16 --fuse --save_result --path videos/short_park_group_cam004.mp4

# test
python3 tools/track.py -f exps/example/mot/yolox_x_ablation.py -c pretrained/bytetrack_ablation.pth.tar -b 1 -d 1 --fp16 --fuse