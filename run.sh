#! bin/bash
if [ -z $1 ]
then
  echo "need a name "
  exit 1
fi

activate $1

if [ $? -ne 0 ]; then
  echo "Run pre-run.sh first"
  exit 1
fi
cp ./web.py ./ml-stable-diffusion/python_coreml_stable_diffusion

cd ml-stable-diffusion

python -m python_coreml_stable_diffusion.web -i ../models --compute-unit ALL
