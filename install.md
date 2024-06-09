To install the NVIDIA CUDA Compiler (nvcc) on Debian GNU/Linux 12 (bookworm), you need to follow these steps:

### Step 1: Update the System

First, ensure your system is up to date:

```bash
sudo apt update
sudo apt upgrade
```

### Step 2: Install Prerequisites

Install the necessary development tools and libraries:

```bash
sudo apt install build-essential dkms
sudo apt install freeglut3 freeglut3-dev libxi-dev libxmu-dev
```

### Step 3: Add the NVIDIA Package Repository

Add the NVIDIA package repository to your system:

1. Download the NVIDIA package repository GPG key and add it:

```bash
wget https://developer.download.nvidia.com/compute/cuda/repos/debian12/x86_64/3bf863cc.pub
sudo apt-key add 3bf863cc.pub
```

2. Add the repository to your sources list:

```bash
sudo sh -c 'echo "deb https://developer.download.nvidia.com/compute/cuda/repos/debian12/x86_64/ /" > /etc/apt/sources.list.d/cuda.list'
```

### Step 4: Install CUDA Toolkit

Update the package lists and install the CUDA toolkit:

```bash
sudo apt update
sudo apt install cuda
```

### Step 5: Set Up Environment Variables

To use the CUDA toolkit, you need to set up the environment variables. Add the following lines to your `~/.bashrc` file:

```bash
export PATH=/usr/local/cuda-12.1/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-12.1/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
```

Then, source the `.bashrc` file to apply the changes:

```bash
source ~/.bashrc
```

### Step 6: Verify the Installation

Check the CUDA version to ensure `nvcc` is installed correctly:

```bash
nvcc --version
```

This should display the version information for `nvcc`.

By following these steps, you should have `nvcc` installed and configured on your Debian GNU/Linux 12 (bookworm) system.
