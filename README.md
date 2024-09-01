# Install CUDA (Version: 12)
This module demonstrate VM setup procedure for CUDA enabled docker container.

## Prequisite
1. GPU
```bash
sudo lspci | grep -i "nvidia"
# (Output) 3D controller: NVIDIA Corporation TU104GL [Tesla T4] (rev a1)
```
1. Boot disk: Minimum 60 GB
```bash
df -h
```
1. CPU memory: 7.5 GB [3.5 GB may be enough]
```bash
free -h
```
1. Operating system: Debian GNU/Linux 12 (bookworm)
```bash
cat /etc/debian-version
```
1. Python3
```bash
python3 --version
```

## Installation
From `install-cuda/` run the following commads sequentially. It would take about 20 minutes to complete the set up procedure and the system will reboot several times.
1. Make sfile executales
```bash
sudo chmod +x initialize.sh 
sudo chmod +x install-cuda.sh
sudo chmod +x install-docker.sh
sudo chmod +x install-nvidia-container-toolkit.sh
```
1. Prepare environment
```bash
./initialize.sh
```
1. Install CUDA
At this step, the system will reboot. Run the 
script again after reboot. 
```bash
./install-cuda.sh
```
On successfull installation, 
a success message will be printed at shell.

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
`docker compose` will print `nvidia-smi` interface at shell. 

## Check CUDA version
```bash
nvcc --version
``` 
See `LD_LIBRARY_PATH`
```bash
echo env$LD_LIBRARY_PATH
```

