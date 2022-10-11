#! /bin/bash

echo "Criando Diretórios..."
        mkdir /publico
        mkdir /adm
        mkdir /ven
        mkdir /sec

echo "Criando Grupos..."
        groupadd GRP_ADM
        groupadd GRP_VEN
        groupadd GRP_SEC

echo "Criando Usuários ..."
        useradd carlos -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM
        useradd maria -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM
        useradd joao -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM

        useradd debora -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN
        useradd sebastiana -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN
        useradd roberto -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN

        useradd josefina -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC
        useradd amanda -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC
        useradd rogerio -c "Usuário Convidado" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC

echo "Definindo Permissões..."
        chown root:GRP_ADM /adm
        chown root:GRP_VEN /ven
        chown root:GRP_SEC /sec

        chmod 777 /publico
        chmod 770 /adm
        chmod 770 /ven
        chmod 770 /sec

echo "Configuração Realizada com Sucesso!!"

