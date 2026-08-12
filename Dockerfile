FROM node:18-alpine
WORKDIR /app
COPY mcp ./mcp
RUN cd mcp && npm install
EXPOSE 8080
CMD ["node", "mcp/server.js"]
