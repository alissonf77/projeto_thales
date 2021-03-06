#!/bin/usr/python
#-*- coding: utf8 -*-
import os, re
os.system ('clear')

print('Preencha as opções para concluir a validação.')
 
nome = raw_input ('Nome: (Ex. Thales Faggiano):') 
if re.match ('^[a-zA-Z ]+$', nome):
	print('Nome Válido.')
else:
	print('Nome Inválido.') 

email = raw_input ('Email: (Ex. senai.info@gmail.com):')
if re.findall ('^([A-Z0-9\.\_-])+([@])[A-Z]+(\.com\.br)|(\.com|\.br)$', email):
	print('Email Válido.')
else:
	print('Email Inválido.')

tel = raw_input ('Telefone: (Ex. (99)99999-9999):')
if re.match ('^[(][0-9]{2}[)][0-9]{5}-[0-9]{4}$', tel): 
	print('Telefone Válido.')
else:
	print('Telefone Inválido.')

rg = raw_input ('RG: (Ex. 99.999.999-0):')
if re.match ('^[0-9]{2}(\.[0-9]{3}){2}-[a-z0-9]{1}$', rg):
	print('RG Válido.')
else:
	print('RG Inválido.')

cpf = raw_input ('CPF: (Ex. 999.999.999-99):')
if re.match ('^[0-9]{3}(\.[0-9]{3}){2}-[0-9]{2}$', cpf):
	print('CPF Válido.')
else:
	print('CPF Inválido.')

date = raw_input ('Data de Nascimento: (Ex. dd/mm/aaaa):')
if re.match ('^(0[1-9]|[1-2][0-9]|3[0-1])[/](0[1-9]|1[0-2])[/](19[0-9]{2}|200[0-9]|201[0-8])$', date):
	print('Data Válida.')
else:
	print('Data Inválida.')

ip = raw_input ('IP: (Ex. 192.168.0.1):')
if re.match ('^([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])(\.([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])){3}$', ip):
	print('IP Válido.')
else:
	print('IP Inválido.')

mascara = raw_input ('Máscara: (Ex. 255.255.255.0):')
if re.match ('^([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])(\.([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])){3}$', mascara):
	print('Máscara Válida.')
else:
	print('Máscara Inváiida.')

print('Validação Concluída com Sucesso.')
