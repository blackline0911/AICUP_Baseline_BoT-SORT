python fast_reid/datasets/generate_AICUP_patches.py --data_path /content/train
cd ..
mkdir yolo
python yolov7/tools/AICUP_to_YOLOv7.py --AICUP_dir /content/train --YOLOv7_dir /content/yolo
cd /content/AICUP_Baseline_BoT-SORT
python3 fast_reid/tools/train_net.py --config-file fast_reid/configs/AICUP/bagtricks_R50-ibn.yml MODEL.DEVICE "cuda:0"
