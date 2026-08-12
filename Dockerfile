FROM node:18-alpine

# 安装 python3 和依赖环境
RUN apk add --no-cache python3 make g++

WORKDIR /app

# 复制 mcp 目录依赖
COPY mcp/package*.json ./mcp/
RUN cd mcp && npm install

# 复制 server 目录依赖
COPY server/requirements.txt ./server/ 2>/dev/null || true

# 复制所有代码
COPY . .

EXPOSE 8787 8513

CMD ["node", "mcp/server.js"]
