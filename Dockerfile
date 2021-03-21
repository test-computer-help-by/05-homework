FROM ubuntu:focal
LABEL maintainer="test@computer-help.by"
RUN apt update \
    && apt dist-upgrade -y \
    && apt clean -y \
    && apt install python3 python3-pip -y \
    && pip3 install web.py
COPY app.py ~/app.py
CMD [ "python3", "~/app.py" ]
EXPOSE 8080