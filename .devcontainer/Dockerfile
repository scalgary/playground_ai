FROM mcr.microsoft.com/devcontainers/python:3.11

# Install uv
RUN curl -LsSf https://astral.sh/uv/install.sh | sh
ENV PATH="/root/.cargo/bin:${PATH}"

# Create workspace
WORKDIR /workspace

# Set uv environment variables
ENV UV_SYSTEM_PYTHON=1
ENV PYTHONPATH=/workspace

