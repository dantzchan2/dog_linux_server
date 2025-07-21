FROM ubuntu:20.04
COPY . /app
WORKDIR /app
RUN chmod +x ./dog_linux_server.x86_64
EXPOSE 7777
CMD ["./dog_linux_server.x86_64", "-server", "-batchmode", "-nographics"]
