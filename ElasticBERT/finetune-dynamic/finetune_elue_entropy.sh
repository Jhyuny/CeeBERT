export ELUE_DIR=/mnt/aix7101/jeong/fnlp/elasticbert-base/
export TASK_NAME=SST-2
export CUDA_VISIBLE_DEVICES=0

python /home/aix7101/jeong/CeeBERT/ElasticBERT/finetune-dynamic/run_elue_entropy.py \
  --model_name_or_path /mnt/aix7101/jeong/fnlp/elasticbert-base \
  --task_name $TASK_NAME \
  --do_train \
  --do_lower_case \
  --data_dir "$ELUE_DIR/$TASK_NAME" \
  --log_dir ./logs/elue/entropy \
  --output_dir /mnt/aix7101/jeong/fnlp/elasticbert-base/ckpts/elue/entropy/$TASK_NAME \
  --num_hidden_layers 12 \
  --num_output_layers 1 1 1 1 1 0 0 1 0 1 0 1 \
  --max_seq_length 128 \
  --per_gpu_train_batch_size 32 \
  --per_gpu_eval_batch_size 32 \
  --learning_rate 2e-5 \
  --weight_decay 0.1 \
  --save_steps 50 \
  --logging_steps 50 \
  --num_train_epochs 3  \
  --warmup_rate 0.06 \
  --evaluate_during_training \
  --overwrite_output_dir \

