FROM python:3.8

RUN mkdir -p /usr/src/app && \
    mkdir -p /usr/src/dataset

WORKDIR /usr/src/app

COPY src/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY src/ .

WORKDIR /usr/src

CMD [ "python", "./app/main_script.py" ]
