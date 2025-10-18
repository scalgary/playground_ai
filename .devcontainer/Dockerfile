FROM python:3.12-slim

RUN apt-get update && \
apt-get install -y git curl && \
rm -rf /var/lib/apt/lists/*

RUN useradd -m -s /bin/bash vscode
USER vscode

RUN curl -LsSf https://astral.sh/uv/install.sh | sh
ENV PATH="/home/vscode/.cargo/bin:$PATH"

WORKDIR /workspace