# ByteTrack

[![PWC](https://img.shields.io/endpoint.svg?url=https://paperswithcode.com/badge/bytetrack-multi-object-tracking-by-1/multi-object-tracking-on-mot17)](https://paperswithcode.com/sota/multi-object-tracking-on-mot17?p=bytetrack-multi-object-tracking-by-1)

[![PWC](https://img.shields.io/endpoint.svg?url=https://paperswithcode.com/badge/bytetrack-multi-object-tracking-by-1/multi-object-tracking-on-mot20-1)](https://paperswithcode.com/sota/multi-object-tracking-on-mot20-1?p=bytetrack-multi-object-tracking-by-1)

#### ByteTrack is a simple, fast and strong multi-object tracker.

<p align="center"><img src="assets/sota.png" width="500"/></p>

> [**ByteTrack: Multi-Object Tracking by Associating Every Detection Box**](https://arxiv.org/abs/2110.06864)
> 
> Yifu Zhang, Peize Sun, Yi Jiang, Dongdong Yu, Fucheng Weng, Zehuan Yuan, Ping Luo, Wenyu Liu, Xinggang Wang
> 
> *[arXiv 2110.06864](https://arxiv.org/abs/2110.06864)*

# 개발 내용

소스코드는 yolox의 bytetrack을 기반으로 작성하였습니다. 물체 사이에 occlusion을 탐지하고, occlusion 발생 시 아이디를 분할하는 알고리즘을 추가하였습니다. 

# 폐색 탐지

객체 탐지에서 사용되는 IOU 기반으로 폐색(occlusion)을 탐지하기에 많은 예외상황이 존재합니다. 대표적으로 폐색이 발생하는 두 물체의 크기차이가 클 경우, IOU 기반으로
폐색 탐지가 불가능합니다. 이를 해결하기 위해 칼만필터에서 사용하는 마할노비스거리를 사용하여 폐색을 탐지하였습니다. 연속된 프레임에서 탐지된 객체와 기존 트랙릿 사이의
거리를 측정하고, 특정 거리 이하인 트랙릿이 2개 이상일 경우 폐색이 발생하였다고 가정합니다. 본 repo에서 만든 폐색 탐지 알고리즘이 트래킹 분야에서 해결하기 힘들었던 폐색
문제를 해결하는 데 많은 도움이 되었으면 좋겠습니다.

## Citation

```
@article{zhang2022bytetrack,
  title={ByteTrack: Multi-Object Tracking by Associating Every Detection Box},
  author={Zhang, Yifu and Sun, Peize and Jiang, Yi and Yu, Dongdong and Weng, Fucheng and Yuan, Zehuan and Luo, Ping and Liu, Wenyu and Wang, Xinggang},
  booktitle={Proceedings of the European Conference on Computer Vision (ECCV)},
  year={2022}
}
```

## Acknowledgement

A large part of the code is borrowed from [YOLOX](https://github.com/Megvii-BaseDetection/YOLOX), [FairMOT](https://github.com/ifzhang/FairMOT), [TransTrack](https://github.com/PeizeSun/TransTrack) and [JDE-Cpp](https://github.com/samylee/Towards-Realtime-MOT-Cpp). Many thanks for their wonderful works.
