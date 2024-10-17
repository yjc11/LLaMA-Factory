train(){
    CUDA_VISIBLE_DEVICES=3,4,5,7 llamafactory-cli train train_config/qwen2_lora_sft.yaml
}

merge(){
    CUDA_VISIBLE_DEVICES=3,4,5,7 llamafactory-cli export train_config/qwen2_lora_sft_merge.yaml
}

api(){
    CUDA_VISIBLE_DEVICES=7 API_PORT=8001 llamafactory-cli api train_config/qwen2_lora_sft_inference.yaml
}
# train
# merge
api