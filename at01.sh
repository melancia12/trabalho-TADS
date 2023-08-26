#!/bin/bash

DICT_FILE="aurelio.txt"

if [ ! -f "$DICT_FILE" ]; then
    echo "Arquivo de dicionário não encontrado: $DICT_FILE"
    exit 1
fi

for ((i=1; i<=5000; i++)); do
    RANDOM_WORD=$(shuf -n 1 "$DICT_FILE")
    
    FOLDER_NAME="$RANDOM_WORD"
    
    mkdir "$FOLDER_NAME"
    chmod 555 "$FOLDER_NAME"
done

echo "Criação de pastas concluída!"
