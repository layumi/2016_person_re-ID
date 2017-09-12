In this dir, we include the data preparation and evaluation codes for CUHK03. 

## CUHK03 Download

You can download the dataset from [this link](http://www.ee.cuhk.edu.hk/~rzhao/).

## CUHK03 Prepartion 

1. Use `prepare_imdb.m` to produce the database in the format for training. (Note that you need to check the data path.)
2. Then use the similar code to train CUHK03.

## CUHK03 Evaluation

1. Generate the test image and id pairs by running `prepare_test.m`. Then we will use it as groundtruth to evaluate.

### Single-shot Result
2. Run `eval_cuhk03_10times.m`. 

In single-shot setting, the code will randomly select 100 images from 100 person as candidate images. There is only one ground truth image in the 100 images. This code will run 10 times to output a stable result.

### Multi-shot Result
3. Run `eval_cuhk03.m`.

In multi-shot setting, the code will use all images in the testing set as candidate images. There are >1 ground truth images in the candidate pool. This code will run only 1 times to output result, because it does not include a random process.
