# Don't Remove Credit @Iam_Sahil_ansari
# Subscribe YouTube Channel For Amazing Bot @Iam_Sahil_ansari
# Ask Doubt on telegram @Iam_Sahil_ansari

FROM python:3.10.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /UHD-MOVIES-BOT
WORKDIR /UHD-MOVIES-BOT
COPY . /UHD-MOVIES-BOT
CMD ["python", "bot.py"]
