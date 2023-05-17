#!/bin/bash

echo "Creating Folders!!!"

mkdir /public
mkdir /administrative
mkdir /sales
mkdir /security

echo "Creating User Groups!!!"

groupadd GRP_ADMINISTRATIVE
groupadd GRP_SALES
groupadd GRP_SECUCIRTY


echo "Creating Users!!!"



useradd carls -m -s /bin/bash -p $(openssl passwd -crypt Passw0rd321) -G RP_ADMINISTRATIVE
useradd john -m -s /bin/bash -p $(openssl passwd -crypt Pass0rd321) -G RP_ADMINISTRATIVE


useradd carie -m -s /bin/bash -p $(openssl passwd -crypt Pass0rd321) -G GRP_SALES
useradd christine -m -s /bin/bash -p $(openssl passwd -crypt Pass0rd321) -G GRP_SALES


useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Pass0rd321) -G GRP_SECUCIRTY
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Pass0rd321) -G GRP_SECUCIRTY


echo "Giving Permissions to the Folders!!!"

chown root:GRP_ADMINISTRATIVE /administrative
chown root:GRP_SALES /sales
chown root:GRP_SECUCIRTY /security

chmod 770 /administrative
chmod 770 /sales
chmod 777 /security
chmod 777 /public

echo "Done. Do Not share your User/Password with anyone!!!"
