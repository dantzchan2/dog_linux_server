# Install dependencies if needed
RUN apt-get update && apt-get install -y \
    libgdiplus \
    libc6-dev \
    && rm -rf /var/lib/apt/lists/*

COPY . /app
WORKDIR /app
RUN chmod +x ./dog_linux_server.x86_64

EXPOSE 7777

# Use the same command you used locally
CMD ["./dog_linux_server.x86_64", "-server", "-batchmode", "-nographics"]