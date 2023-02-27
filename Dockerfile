FROM continuumio/anaconda3:2022.10

RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y

COPY  ./ml-stable-diffusion /src

WORKDIR /src

RUN pip install -r requirements.txt

RUN python -m python_coreml_stable_diffusion.torch2coreml --convert-unet --convert-text-encoder --convert-vae-decoder --convert-safety-checker -o ./models
