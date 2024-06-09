lsb_release -a
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install libgl1-mesa-glx -y
# sudo apt install nvidia-cuda-toolkit
curl https://ollama.ai/install.sh | sh
ollama serve
