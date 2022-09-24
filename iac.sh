#!bin/bash

echo "Script de criação de estrutura de usuários, diretórios e permissões" 

echo "Criando diretórios..."

mkdir /publico /adm /ven /sec

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários e seus respectivos grupos..."

useradd carlos -c "Carlos da Silva" -s /bin/bash -m -G GRP_ADM -p $(openssl passwd 123456)
useradd maria -c "Maria da Silva" -s /bin/bash -m -G GRP_ADM -p $(openssl passwd 123456)
useradd joao -c "João da Silva" -s /bin/bash -m -G GRP_ADM -p $(openssl passwd 123456)
useradd debora -c "Débora da Silva" -s /bin/bash -m -G GRP_VEN -p $(openssl passwd 123456)
useradd sebastiana -c "Sebastiana da Silva" -s /bin/bash -m -G GRP_VEN -p $(openssl passwd 123456)
useradd roberto -c "Roberto da Silva" -s /bin/bash -m -G GRP_VEN -p $(openssl passwd 123456)
useradd josefina -c "Josefina da Silva" -s /bin/bash -m -G GRP_SEC -p $(openssl passwd 123456)
useradd amanda -c "Amanda da Silva" -s /bin/bash -m -G GRP_SEC -p $(openssl passwd 123456)
useradd rogerio -c "Rogério da Silva" -s /bin/bash -m -G GRP_SEC -p $(openssl passwd 123456)

echo "Adicionando permissões..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Finalizado..."