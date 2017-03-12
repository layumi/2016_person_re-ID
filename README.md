# A Discriminatively Learned CNN Embedding for Person Re-identification

In this package, we provide our training and testing code written in [Matconvnet](http://www.vlfeat.org/matconvnet/) for the paper [A Discriminatively Learned CNN Embedding for Person Re-identification] (https://arxiv.org/abs/1611.05666).
 
We also include matconvnet-beta23 which has been modified for our paper. All codes have been test on Ubuntu14.04 and Ubuntu16.04 with Matlab R2015b.

* [Xuanyi Dong](https://github.com/D-X-Y) also realizes our paper in [Caffe](https://github.com/D-X-Y/caffe-reid). Alternatively, you can run the code with Caffe.

## Installation
1. Clone this repo
 
	```Shell
	git clone https://github.com/layumi/2016_person_re-ID.git
	cd 2016_person_re-ID
	mkdir data
	```

2. Download the pretrained model. 

	You can find the pretrained model in [GoogleDriver](https://drive.google.com/open?id=0B0VOCNYh8HeRS2RtZ1pMUUtPZ2M) or [BaiduYun] (https://pan.baidu.com/s/1miG2OpM). Download and put them into the `./data`.

	BaiduYun sometime changes the link. If you find the url fail, you can contact me to update it.
	
3. Compile matconvnet 

	You just need to uncomment and modify some lines in `gpu_compile.m` and run it in Matlab. Try it~

	If you fail in compilation, you may refer to http://www.vlfeat.org/matconvnet/install/

## Dataset
Download [Market1501 Dataset] (http://www.liangzheng.org/Project/project_reid.html)

If you want to rehearsal our result on CUHK03, you may just change the number of kernal from 751 to 1367. Because there are 751 IDs in Market1501 while 1367 training identities are in CUHK03.

## Test 
Run `test2/test_gallery_res.m` to extract the features of gallery. They will store in a .mat file. You can use it to do evaluation.
(For example, you may modify the [Market1501 baseline code](http://www.liangzheng.org/Project/project_reid.html) to evaluate our model. It may take a while.)

## Train
1. Add your dataset path into `prepare_data.m` and run it. Make sure the code outputs the right image path.

2. Run `train_id_net_res_2stream.m` to have fun.

## Result
|Methods |   Rank@1 | mAP|
| --------   | -----  | ----  |
|This Code* | 80.82% | 62.30%|

*This result is slightly higher than the result reported in the paper.
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
##Thanks
Thanks for Xuanyi Dong to realize our paper in Caffe.

Thanks for Weihang Chen to report the bug in `prepare_data.m`.
