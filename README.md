# A Discriminatively Learned CNN Embedding for Person Re-identification

In this package, we provide our training and testing code written in [Matconvnet](http://www.vlfeat.org/matconvnet/) for the paper [A Discriminatively Learned CNN Embedding for Person Re-identification] (https://arxiv.org/abs/1611.05666).
 
We also include matconvnet-beta23 which has been modified for our paper. All codes have been test on Ubuntu14.04 and Ubuntu16.04 with Matlab R2015b.

**This code is ONLY released for academic use.**

* [Xuanyi Dong](https://github.com/D-X-Y) also realizes our paper in [Caffe](https://github.com/D-X-Y/caffe-reid). Alternatively, you can run the code with Caffe.

~What's new: We add the data preparation and evaluation codes for CUHK03.

~What's new: We make the code of model structure more easy to follow.

~What's new: We provide a better code for extract feature.

~What's new: We provide a faster evaluation code for Market-1501.

## Installation
1. Clone this repo
 
	```Shell
	git clone https://github.com/layumi/2016_person_re-ID.git
	cd 2016_person_re-ID
	mkdir data
	```

2. Download the pretrained model. 
	
	**This model is ONLY released for academic use.**
	You can find the pretrained model in [GoogleDriver](https://drive.google.com/open?id=0B0VOCNYh8HeRWks0V24xTlpKWkU) or [BaiduYun] (https://pan.baidu.com/s/1miG2OpM). Download and put them into the `./data`.

	BaiduYun sometime changes the link. If you find the url fail, you can contact me to update it.
	
3. Compile matconvnet 
**(Note that I have included my Matconvnet in this repo, so you do not need to download it again. I has changed some codes comparing with the original version. For example, one of the difference is in `/matlab/+dagnn/@DagNN/initParams.m`. If one layer has params, I will not initialize it again, especially for pretrained model.)**

	You just need to uncomment and modify some lines in `gpu_compile.m` and run it in Matlab. Try it~
	(The code does not support cudnn 6.0. You may just turn off the Enablecudnn or try cudnn5.1)

	If you fail in compilation, you may refer to http://www.vlfeat.org/matconvnet/install/

## Dataset
* Download [Market1501 Dataset] (http://www.liangzheng.org/Project/project_reid.html) The photos are taken in Tsinghua University.

* `DukeMTMC-reID` is a larger dataset in the same format of `Market1501`. The photos are taken in Duke University.
You can download it from https://github.com/layumi/DukeMTMC-reID_evaluation. We also upload the result to DukeMTMC-reID leaderboard.

* If you want to rehearsal our result on CUHK03, you can simply change the number of kernel from 751 to 1367 in `resnet52_market.m` and recreate `net.mat`. Because there are 751 IDs in Market-1501 while 1367 training identities are in CUHK03. More information can be found in `cuhk03-prepare-eval` dir. We add the data preparation and evaluation codes for CUHK03.

## Test 
1. Run `test/test_gallery_query_crazy.m` to extract the features of images in the gallery and query set. They will store in a .mat file. Then you can use it to do evaluation.
2. Evaluate feature on the Market-1501. Run `evaluation/zzd_evaluation_res_faster.m`. You can get the following Single-query Result.

| Methods               | Rank@1 | mAP    | 
| --------              | -----  | ----   | 
| Ours* (SQ)            | 80.82% | 62.30% | 
| Ours* (MQ-avg)        | 86.67% | 70.16% | 
| Ours* (MQ-max)        | 86.76% | 70.68% | 
| Ours* (MQ-max+rerank) | 86.67% | 72.55% | 

*Note that the result is slightly higher than the result reported in our paper.

*For multi-query result, you can use `evaluation/zzd_evaluation_res_fast.m` . It is slower than `evaluation/zzd_evaluation_res_faster.m`  since it need to extract extra features. (The evaluation code is modified from the [Market-1501 Baseline Code](http://www.liangzheng.org/Project/project_reid.html))

## FQA
1. What is multi-query setting?

Actually, we can get a sequence of the query under one camera instead of one image. Then we can use every image in this sequence to extract a query mean feature (mean of feature extracted from several images).
We call it multi-query. If we use this feature to do person retrieval, we usually get a better result.
But it use additional images (in 'Market-1501/gt_bboxes'). You can find more detail in the [original paper](http://www.cv-foundation.org/openaccess/content_iccv_2015/papers/Zheng_Scalable_Person_Re-Identification_ICCV_2015_paper.pdf). 

## Train
1. Add your dataset path into `prepare_data.m` and run it. Make sure the code outputs the right image path.

2. Run `train_id_net_res_2stream.m` to have fun.

## Citation
Please cite this paper in your publications if it helps your research:
```
@article{zheng2016discriminatively,
  title={A Discriminatively Learned CNN Embedding for Person Re-identification},
  author={Zheng, Zhedong and Zheng, Liang and Yang, Yi},
  journal={arXiv preprint arXiv:1611.05666},
  year={2016}
}
```
## Acknowledge
Thanks for Xuanyi Dong to realize our paper in Caffe.

Thanks for Weihang Chen to report the bug in `prepare_data.m`.
