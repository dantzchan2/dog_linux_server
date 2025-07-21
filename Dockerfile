FROM ubuntu:20.04

# Install more graphics libraries for headless Unity
RUN apt-get update && apt-get install -y \
    libgdiplus \
    libc6-dev \
    libx11-6 \
    libxcursor1 \
    libxrandr2 \
    libxinerama1 \
    libxi6 \
    libglu1-mesa \
    && rm -rf /var/lib/apt/lists/*

COPY . /app
WORKDIR /app
RUN chmod +x ./dog_linux_server.x86_64

EXPOSE 7777

CMD ["./dog_linux_server.x86_64", "-server", "-batchmode", "-nographics", "-logFile", "/dev/stdout"]