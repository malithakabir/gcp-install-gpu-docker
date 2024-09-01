!/bin/bash

# Ref: https://cloud.google.com/compute/docs/gpus/install-drivers-gpu#linux

curl -L https://github.com/GoogleCloudPlatform/compute-gpu-installation/releases/download/cuda-installer-v1.1.0/cuda_installer.pyz --output cuda_installer.pyz

sudo python3 cuda_installer.pyz install_driver

sudo python3 cuda_installer.pyz install_cuda

sudo python3 cuda_installer.pyz verify_cuda

echo "CUDA installation completed."