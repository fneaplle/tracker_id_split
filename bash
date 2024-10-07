# demo_track
python tools/demo_track.py video -f exps/example/mot/yolox_x_ablation.py -c pretrained/bytetrack_ablation.pth.tar --fp16 --fuse --save_result --path videos/CAM1_edit.mp4
python tools/demo_track.py video -f exps/example/mot/yolox_x_ablation.py -c pretrained/bytetrack_ablation.pth.tar --fp16 --fuse --save_result --path rtsp://admin:q1w2e3r4@@192.168.0.247:554/onvif/profile3/media.smp
python tools/demo_track.py video -f exps/default/yolox_m.py -c yolox_m.pth --fp16 --fuse --save_result --path rtsp://admin:q1w2e3r4@@192.168.0.247:554/onvif/profile3/media.smp
python tools/demo_track.py video -f exps/default/yolox_m.py -c yolox_m.pth --fp16 --fuse --save_result --path videos/CAM1_edit.mp4
# test
python3 tools/track.py -f exps/example/mot/yolox_x_ablation.py -c pretrained/bytetrack_ablation.pth.tar -b 1 -d 1 --fp16 --fuse