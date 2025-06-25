FROM python:3.11-slim-bookworm

# Declare build-time argument
ARG HF_TOKEN

# Echo during build (will be empty if not passed explicitly via --build-arg)
RUN echo "🔧 Build-time HF_TOKEN is: $HF_TOKEN"

# Pass build arg to runtime env
ENV HF_TOKEN=${HF_TOKEN}

# Runtime echo
CMD ["sh", "-c", "echo 🟢 Runtime HF_TOKEN is: $HF_TOKEN"]
