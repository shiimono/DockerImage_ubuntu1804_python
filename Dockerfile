# Dockerfileの基本構文：https://qiita.com/soushiy/items/0945bcbc7ecce4822985

FROM ubuntu:18.04

RUN apt-get update
# pythonをインストール
RUN apt-get install -y python3 python3-pip
# gitをインストール
RUN apt install git -y
# pythonライブラリをインストール
RUN pip3 install pylint numpy
