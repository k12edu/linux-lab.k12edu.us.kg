FROM node:22

# 安裝 sudo 並建立 sudo 群組
RUN apt-get update && apt-get install -y sudo && rm -rf /var/lib/apt/lists/*

# 建立非 root 使用者並添加到 sudo 群組
RUN useradd -m user && echo "user ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# 切換到非 root 使用者
USER user

WORKDIR /home/user/app

# 安裝 docsify-cli，使用 sudo 提升權限
RUN sudo npm install -g docsify-cli

# 複製專案檔案
COPY . .