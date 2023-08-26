#!/bin/bash

USER1="usuarioTeste1"
USER2="usuarioTeste2"

PASSWORD1=$(openssl rand -base64 6)
PASSWORD2=$(openssl rand -base64 6)

echo "entrou aqui"

GROUP="adms"

if grep -q "^$GROUP:" /etc/group; then
    echo "Grupo $GROUP já existe"
else
    sudo groupadd "$GROUP"
fi

sudo useradd -m -p $(openssl passwd -6 "$PASSWORD1") "$USER1"
sudo useradd -m -p $(openssl passwd -6 "$PASSWORD2") "$USER2"

sudo usermod -aG "$GROUP" "$USER1"
sudo usermod -aG "$GROUP" "$USER2"

echo "Usuários adicionados: $USER1, $USER2"
echo "Senhas geradas: $PASSWORD1, $PASSWORD2"
echo "Usuários adicionados ao grupo: $GROUP"
