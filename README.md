# Install CUDA (Version: 12)
## Prequisite
1. Check if GPU is attached
```bash
sudo lspci | grep -i "nvidia"
# (Output) 3D controller: NVIDIA Corporation TU104GL [Tesla T4] (rev a1)
```
1. Minimum disk space 60 GB
```bash
df -h
```
1. Debian version 12
```bash
cat /etc/debian-version
```
1. Python3
```bash
python3 --version
```

## Installation
From `install-cuda/` run the following commads sequentially. It would take about 20 minutes to complete the set up procedure. During installation, the system will reboot several times.

1. Prepare environment
```bash
./initialize.sh
```
1. Install CUDA (Version 12)
```bash
./install-cuda.sh
```
1. Install docker
```bash
./install-docker.sh
```
1. Install nvidia-container-toolkit
```bash
./install-nvidia-container-toolkit.sh
```

## Verify installtion
1. (optional) CUDA
```bash
sudo nvidia-smi
```
1. (optional) Docker
```bash
sudo docker run hello-world
```
1. Docker with CUDA support (using `compose.yml` file
```bash
docker compose up
```

Docker compose should a similar message at console:
---
Attaching to test-1 \
test-1  | Sun Sep  1 20:11:38 2024       \
test-1  | +-----------------------------------------------------------------------------------------+ \
test-1  | | NVIDIA-SMI 550.90.07              Driver Version: 550.90.07      CUDA Version: 12.4     | \
test-1  | |-----------------------------------------+------------------------+----------------------+ \
test-1  | | GPU  Name                 Persistence-M | Bus-Id          Disp.A | Volatile Uncorr. ECC | \
test-1  | | Fan  Temp   Perf          Pwr:Usage/Cap |           Memory-Usage | GPU-Util  Compute M. | \
test-1  | |                                         |                        |               MIG M. | \
test-1  | |=========================================+========================+======================| \
test-1  | |   0  Tesla T4                       On  |   00000000:00:04.0 Off |                    0 | \
test-1  | | N/A   39C    P8              9W /   70W |       1MiB /  15360MiB |      0%      Default | \
test-1  | |                                         |                        |                  N/A | \
test-1  | +-----------------------------------------+------------------------+----------------------+ \
test-1  |                                                                                             \
test-1  | +-----------------------------------------------------------------------------------------+ \
test-1  | | Processes:                                                                              | \
test-1  | |  GPU   GI   CI        PID   Type   Process name                              GPU Memory | \
test-1  | |        ID   ID                                                               Usage      | \
test-1  | |=========================================================================================| \
test-1  | |  No running processes found                                                             | \
test-1  | +-----------------------------------------------------------------------------------------+ \
test-1 exited with code 0 \

---