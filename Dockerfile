FROM python:3.8

RUN mkdir -p /usr/src/app && \
    mkdir -p /usr/src/dataset && \
    mkdir -p /usr/src/results

WORKDIR /usr/src/app

COPY src/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

CMD [ "python", "./src/main_script.py" ]
