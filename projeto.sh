#!/bin/bash
dialog														\
--title 'Válidação'											\
--msgbox 'Para completar a válidação, preencha as opções.'	\
0 0															
clear

function name (){
read -p  'Nome: (Ex. Thales Roberto) :' nome
if [[ $(echo $nome | grep -E '([[:digit:]]|[[:punct:]])') ]]; then
		echo 'Nome Inválido. Tente Novamente.' && name 
else
		echo 'Nome Válido.'
fi
}
name

function mail (){
read -p 'Email: (Ex. senai.info@gmail.com) :' email
if [[ $(echo $email | grep -E '^([Aa-Zz0-9\.\_-])+([@])[Aa-Zz]+((\.com\.br)|(\.com|\.br))$') ]]; then
	echo 'Email válido.'
else
	echo 'Email Inválido. Tente Novamente.' && mail
fi
}
mail

function tel (){
read -p 'Telefone: (Ex. (11)99999-9999) :' tel
if [[ $(echo $tel | grep -E '^[(][0-9]{2}[)]9[0-9]{4}-[0-9]{4}') ]]; then
	echo 'Telefone Válido.'
else
	echo 'Telefone Inválido. Tente Novamente' && tel
fi
}
tel

function rg (){
read -p 'RG: (Ex. 99.999.999-0) :' rg
if [[ $(echo $rg | grep -E '^[0-9]{2}\.[0-9]{3}\.[0-9]{3}-[a-zA-Z0-9]{1}$') ]]; then
	echo 'RG Válido.'
else
	echo 'RG Inválido. Tente Novamente.' && rg
fi
}
rg

function cpf (){
read -p 'CPF: (Ex. 999.999.999-99) :' cpf
if [[ $(echo $cpf | grep -E '^[0-9]{3}\.[0-9]{3}\.[0-9]{3}-[0-9]{2}$') ]]; then
	echo 'CPF Válido.'
else
	echo 'CPF Inválido. Tente Novamente.' && cpf
fi
}
cpf

function data (){
read -p 'Data de Nascimento: (dd/mm/aaaa) :' data
if [[ $(echo $data | grep -E '^(0[1-9]|[1-2][0-9]|3[0-1])[/](0[1-9]|1[0-2])[/][0-9]{4}$') ]]; then
	echo 'Data Válida.'
else
	echo 'Data Inválida. Tente Novamente.' && data
fi
}
data

function ip (){ 
read -p 'IP: (Ex. 192.168.0.0) :' ip
if [[ $(echo $ip | grep -E '^(((([2]([5][0-5]|[0-4][0-9])|[0-9][0-9])|[0-9])\.)|(1[0-9][0-9]\.)){3}((([2]([5][0-5]|[0-4][0-9])|[0-9][0-9])|[0-9])|[1][0-9][0-9])$') ]]; then
	echo 'IP Válido.'
else
	echo 'IP Inválido. Tente Novamente.' && ip
fi
}
ip

function mask (){
read -p 'Máscara: (Ex. 255.255.255.0) :' mask
if [[ $(echo $mask | grep -E '^(((([2]([5][0-5]|[0-4][0-9])|[0-9][0-9])|[0-9])\.)|(1[0-9][0-9]\.)){3}((([2]([5][0-5]|[0-4][0-9])|[0-9][0-9])|[0-9])|[1][0-9][0-9])$') ]]; then
	echo 'Máscara Válida.'
else
	echo 'Máscara Inválida. Tente Novamente.' && mask
fi
}
mask

dialog 											\
--title 'Válidação Concluída'					\
--msgbox 'Seus dados válidados foram: '$nome', '$email', '$tel', '$rg', '$cpf', '$data', '$ip' e '$mask' '					\
0 0 											\
