In this dir, we include the data preparation and evaluate code for CUHK03. 

## CUHK03 Download

You can download the dataset from [this link](http://www.ee.cuhk.edu.hk/~rzhao/).

## CUHK03 Prepartion 

1. use `prepare_imdb.m` to produce the database in the format of Market1501.
2. then use the similar code to train CUHK03.

## CUHK03 Evaluation

1. generate the test image and id pairs by running `prepare_test.m`.

### Single-shot Result
2. `eval_cuhk03_10times.m` 

### Multi-shot Result
3. `eval_cuhk03.m`
