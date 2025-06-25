FROM runpod/worker-comfyui:5.1.0-base

RUN mkdir -p \
    /comfyui/models/checkpoints/FLUX1 \
    /comfyui/models/loras \
    "/comfyui/models/controlnet/FLUX.1/InstantX-FLUX1-Dev-Union" \
    /comfyui/models/upscale_models

# --- Checkpoints ---
RUN comfy model download --url "https://huggingface.co/singhal4896/lily_lora/resolve/main/flux1-dev.safetensors?download=true" --relative-path models/checkpoints --filename "flux1-dev.sft"