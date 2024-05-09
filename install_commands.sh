wget https://repo.anaconda.com/archive/Anaconda3-2024.02-1-Linux-x86_64.sh
bash Anaconda3-2024.02-1-Linux-x86_64.sh
source ~/.bashrc
conda create -n bot python=3.7
conda activate bot
cd /content/AICUP_Baseline_BoT-SORT
pip install numpy
pip install -r requirements.txt
pip install cython; pip3 install 'git+https://github.com/cocodataset/cocoapi.git#subdirectory=PythonAPI'
pip install cython_bbox
pip install faiss-cpu
python fast_reid/datasets/generate_AICUP_patches.py --data_path /content/drive/MyDrive/train
python yolov7/tools/AICUP_to_YOLOv7.py --AICUP_dir /content/drive/MyDrive/train --YOLOv7_dir /content/drive/MyDrive/yolo

