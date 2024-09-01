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
If everything is correct then docker compose will print `nvidia-smi` interface at shell. 
