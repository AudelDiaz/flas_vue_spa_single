FROM ubuntu
RUN apt update && apt install -y git npm python3-pip python3-requests
RUN mkdir /src
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
COPY src /src
RUN pip3 install -r /src/backend/requirements.txt
WORKDIR /src
VOLUME [ "/src" ]
EXPOSE 5000
ENTRYPOINT [ "/entrypoint.sh" ]