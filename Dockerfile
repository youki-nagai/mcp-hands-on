FROM node:20-slim

WORKDIR /app

# 必要なファイルを全てコピー
COPY . .

# 依存関係のインストール
RUN npm install

# TypeScriptをビルド
RUN npm run build

# 環境変数の設定
ENV NODE_ENV=production

# コンテナ起動時のコマンド
CMD ["npm", "run", "start"]
