#!/bin/bash

fuser -k 3000/tcp

# Update package lists
apt update

cd /workspace/stable-diffusion-webui

git stash

git checkout master

git pull

cd /workspace

source venv/bin/activate

cd /workspace/stable-diffusion-webui

# git checkout dev

rm -r webui-user.sh

wget -O /workspace/stable-diffusion-webui/webui-user.sh https://huggingface.co/MonsterMMORPG/SECourses/raw/main/webui-user-v2.sh

wget -O /workspace/stable-diffusion-webui/models/VAE/best_SDXL_VAE_FP16.safetensors https://huggingface.co/madebyollin/sdxl-vae-fp16-fix/resolve/main/sdxl_vae.safetensors

wget -O /workspace/stable-diffusion-webui/models/VAE/best_SD_1_5_VAE.ckpt https://huggingface.co/stabilityai/sd-vae-ft-mse-original/resolve/main/vae-ft-mse-840000-ema-pruned.ckpt

python relauncher.py