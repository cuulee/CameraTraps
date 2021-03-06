DATASET_NAME=wellington
DATASET_DIR=/data/lila/well_cropped_tfrecords
CHECKPOINT_DIR=./$(echo log/20* | sort | tail -n 1)/all
MODEL_NAME=inception_v4
NUM_GPUS=1

# Run evaluation.
python eval_image_classifier.py \
    --eval_dir=${CHECKPOINT_DIR} \
    --dataset_dir=${DATASET_DIR} \
    --dataset_name=${DATASET_NAME} \
    --dataset_split_name=test \
    --model_name=${MODEL_NAME} \
    --checkpoint_path=${CHECKPOINT_DIR}
