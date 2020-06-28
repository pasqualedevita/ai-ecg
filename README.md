# ai-ecg

## Run with Docker

```bash
mkdir -p dataset/ECG/mitdb && rsync -Cavz physionet.org::mitdb dataset/ECG/mitdb
mkdir -p dataset/ECG/incartdb && rsync -Cavz physionet.org::mitdb dataset/ECG/incartdb
```

```bash
docker build -t ia-ecg:v0.1 .

docker run --rm -it \
       -v ${PWD}:/usr/src/app \
       ia-ecg:v0.1
```
