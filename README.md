# Install CUDA (Version: 12)
This module demonstrates VM setup procedure for CUDA enabled docker container.

## Prerequisite
1. GPU
```bash
sudo lspci | grep -i "nvidia"
# (Output) 3D controller: NVIDIA Corporation TU104GL [Tesla T4] (rev a1)
```
2. Boot disk: Minimum 60 GB
```bash
df -h
```
3. CPU memory: 7.5 GB [3.5 GB may be enough]
```bash
free -h
```
4. Operating system: Debian GNU/Linux 12 (bookworm)
```bash
cat /etc/debian-version
```
5. Python3
```bash
python3 --version
```

## Installation
From `install-cuda/` run the following commads sequentially. 
It would take about 20 minutes to complete the setup procedure 
and the system will reboot several times.

1. Make bash scripts executales
```bash
sudo chmod +x initialize.sh 
sudo chmod +x install-cuda.sh
sudo chmod +x install-docker.sh
sudo chmod +x install-nvidia-container-toolkit.sh
```
2. Prepare build environment
```bash
./initialize.sh
```
3. Install CUDA driver and CUDA toolkit
At this step, the system will reboot. Run the 
script again after reboot. 
```bash
./install-cuda.sh
```
On successfull installation, 
a success message will be printed at shell.

4. Install docker
```bash
./install-docker.sh
```
5. Install nvidia-container-toolkit
```bash
./install-nvidia-container-toolkit.sh
```

## Verify installation
1. (optional) CUDA driver
```bash
sudo nvidia-smi
```
1. (optional) Docker
```bash
sudo docker run hello-world
```
1. Docker container with CUDA support (using `compose.yml` file
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

