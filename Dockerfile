FROM node:18-alpine
WORKDIR /app
COPY mcp/package*.json ./
RUN npm install
COPY mcp/ .
EXPOSE 8787
CMD ["npm", "start"]
