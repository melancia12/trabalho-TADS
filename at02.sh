#!/bin/bash

USERNAME="luis"
USER_HOME="/home/$USERNAME"

if [ ! -d "$USER_HOME" ]; then
    echo "Diretório do usuário não encontrado: $USER_HOME"
    exit 1
fi

find "$USER_HOME" -type f