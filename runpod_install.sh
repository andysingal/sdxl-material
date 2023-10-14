apt update
yes | apt-get install python3.10-tk

cd /workspace

git clone https://github.com/FurkanGozukara/background-replacement

cd /workspace/background-replacement

git clone https://huggingface.co/MonsterMMORPG/examples

python3 -m venv venv

source venv/bin/activate

rm -r models
rm -r segmenter.py
wget https://huggingface.co/spaces/Shopify/background-replacement/resolve/main/segmenter.py

# Install fastapi package
pip install fastapi==0.99.1

# Install required Python packages from requirements.txt
pip install -r requirements.txt