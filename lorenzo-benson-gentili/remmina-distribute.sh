#!/bin/bash

utenti="$(ls /home/)"		# per ogni utente	# command substitution
TUTTI_GLI_IP="10.2.60.100 10.2.4.140 10.2.4.11 10.2.7.100 10.2.40.100"		# per ogni IP

for user in $utenti		# variabile d'appoggio  # variable substitution
do
	for IP in $TUTTI_GLI_IP
	do
		sed "s/VM.remmina/VM-$IP.remmina/g" remoto.sh > /home/$user/Desktop/remoto-$IP.sh
		sed "s/10.2.60.100/$IP/g" VM.remmina > VM-$IP.remmina
		cp VM-$IP.remmina /home/$user/Desktop/ 
	done
done