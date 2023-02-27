#! bin/bash

if [ -z $1 ]
then
  echo "need a name"
  exit 1
fi

activate $1

if [ $? -ne 0 ]; then
  conda create -n $1 python=3.8 -y
fi
result=$(huggingface-cli whoami)
if [ $result = "Not logged in" ]; then
  huggingface-cli login
fi
pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
cd ml-stable-diffusion
pip install -r requirements.txt
pip install gradio "httpx[socks]"

python -m python_coreml_stable_diffusion.torch2coreml --convert-unet --convert-text-encoder --convert-vae-decoder --convert-safety-checker -o ../models