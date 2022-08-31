#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -c "convidado especial" -s /bin/bash -m -p $(openssl passwd "senha123") -G GRP_ADM
useradd maria -c "convidado especial" -s /bin/bash -m -p $(openssl passwd "senha123") -G GRP_ADM
useradd joao -c "convidado especial" -s /bin/bash -m -p $(openssl passwd "senha123") -G GRP_ADM

useradd debora -c "convidado especial" -s /bin/bash -m -p $(openssl passwd "senha123") -G GRP_VEN
useradd sebastian -c "convidado especial" -s /bin/bash -m -p $(openssl passwd "senha123") -G GRP_VEN
useradd roberto -c "convidado especial" -s /bin/bash -m -p $(openssl passwd "senha123") -G GRP_VEN

useradd josefina -c "convidado especial" -s /bin/bash -m -p $(openssl passwd "senha123") -G GRP_SEC
useradd amanda -c "convidado especial" -s /bin/bash -m -p $(openssl passwd "senha123") -G GRP_SEC
useradd rogerio -c "convidado especial" -s /bin/bash -m -p $(openssl passwd "senha123") -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "FIM...  =)"
