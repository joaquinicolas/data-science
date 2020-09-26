FROM continuumio/anaconda3
WORKDIR /app
ARG USER="vscode"
RUN useradd -ms /bin/bash "$USER"

RUN conda install tensorflow -y --quiet \
 & conda install jupyter -y --quiet

RUN mkdir /opt/notebooks
EXPOSE 8888

USER "$USER"
ENTRYPOINT [ "jupyter",  "notebook", "--ip='*'", "--port=8888", "--no-browser" ]
