FROM ubuntu
RUN apt update && apt install -y git npm python3-pip python3-requests
RUN mkdir /src
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
VOLUME [ "/src" ]
EXPOSE 8080 5000
ENTRYPOINT [ "/entrypoint.sh" ]