FROM ubuntu:20.04
RUN apt-get update && \
    apt-get -y install sudo && sudo apt-get -y install wget
RUN sudo apt-get -y install python3 && \
    sudo apt -y install python3-pip
RUN wget -O requirements.txt "https://pastebin.com/raw/82JHEZXV"
RUN pip3 install -r requirements.txt
RUN mkdir WORK_DIR
RUN mkdir -p WEB_DIR
COPY . /WEB_DIR
RUN chmod +x /WEB_DIR/serverNotebook.sh
EXPOSE 80
EXPOSE 8888
ENTRYPOINT [ "python3" ]
CMD [ "/WEB_DIR/app.py" ]