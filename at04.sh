#!/bin/bash

echo "Usuários e suas últimas datas de login:"
echo "---------------------------------------"

for user in $(cut -d : -f 1 /etc/passwd); do
    last_login=$(last -F -n 1 "$user" | awk '{print $5" "$6" "$7}')
    echo "Usuário: $user, Último login: $last_login"
done
