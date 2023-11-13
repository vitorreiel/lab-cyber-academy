#!/bin/bash

sudo apt update -y > /dev/null 2>&1
echo -e "\n\033[1;32m- [ Checando Dependências e Atualizações ] \033[0m"
sudo apt install git ansible python3 python3-pip -y > /dev/null 2>&1
pip install boto3 > /dev/null 2>&1
ansible-galaxy collection install community.aws > /dev/null 2>&1
echo -e "\033[1;32m- [ Dependências instaladas com Sucesso! ] \033[0m\n"

echo -e "\n\033[1;34m- [ Bem vindo ao Lab Cyber Academy ] \033[0m"
sleep 1
echo -e "\n\033[1;35m- [ Digite: 1 - Para criar um cenário de treinamento em Segurança Cibernética. ] \033[0m"
echo -e "\n\033[1;31m- [ Digite: 2 - Para deletar um cenário de treinamento já existente. ] \033[0m\n"

read inicial

aws_access_key=$(awk -F= '/aws_access_key_id/ && !/^#/ {print $2}' aws_cli_access)
aws_secret_key=$(awk -F= '/aws_secret_access_key/ && !/^#/ {print $2}' aws_cli_access)
aws_session_token=$(awk -F= '/aws_session_token/ && !/^#/ {sub(/aws_session_token=/, ""); print}' aws_cli_access)
arquivo_destino="playbook-instructor-profile/vars/main.yaml"

if [ "$inicial" = "1" ]; then

  clear
  echo -e "\n\033[1;33m- [ Atenção: É necessário que sua conta AWS Academy esteja iniciada! ] \033[0m"
  sleep 1
  echo -e '\n\033[1;33m- [ Atenção: É necessário que tenha colocado sua AWS CLI no arquivo "aws_cli_access". ] \033[0m'
  sleep 1
  echo -e "\n\033[1;35m [default] \n aws_access_key_id: $aws_access_key \n aws_secret_access_key: $aws_secret_key \n aws_session_token: $aws_session_token \033[0m"
  sleep 1
  echo -e "\n\033[1;31m- [ As chaves acima estão corretas? Sim ou Não ] \033[0m\n"
  read confirmacao

  if [ "$confirmacao" = "Sim" ] || [ "$confirmacao" = "SIM" ] || [ "$confirmacao" == "sim" ] || [ "$confirmacao" == "s" ] || [ "$confirmacao" == "S" ]; then

    echo -e "\n\033[1;33m- [ Iniciando configurações da Infraestrutura. Aguarde! ] \033[0m\n"
    awk -v new_value_1="$aws_access_key" 'NR == 2 {print "aws_access_key: " new_value_1} NR != 2' "$arquivo_destino" > tmpfile && mv tmpfile "$arquivo_destino"
    awk -v new_value_2="$aws_secret_key" 'NR == 3 {print "aws_secret_key: " new_value_2} NR != 3' "$arquivo_destino" > tmpfile && mv tmpfile "$arquivo_destino"
    awk -v new_value_3="$aws_session_token" 'NR == 4 {print "aws_session_token: " new_value_3} NR != 4' "$arquivo_destino" > tmpfile && mv tmpfile "$arquivo_destino"
    ansible-playbook -i playbook-instructor-profile/hosts playbook-instructor-profile/playbook.yaml

  elif [ "$confirmacao" = "Não" ] || [ "$confirmacao" = "NÃO" ] || [ "$confirmacao" == "não" ] || [ "$confirmacao" == "Nao" ] || [ "$confirmacao" = "NAO" ] || [ "$confirmacao" == "nao" ] || [ "$confirmacao" == "n" ] || [ "$confirmacao" == "N" ]; then

    echo -e '\n\033[1;33m- [ Por favor, modifique o arquivo "aws_cli_access" e inserindo toda sua AWS CLI. ] \033[0m'

  else

    echo -e "\n\033[1;33m- [ Não consegui entender o que quis dizer :( ] \033[0m"

  fi

elif [ "$inicial" = "2" ]; then

  clear
  echo -e "\n\033[1;33m- [ Atenção: Você está prestes a deletar a infraestrutura criada anteriormente! ] \033[0m"
  sleep 1
  echo -e "\n\033[1;35m- [ Atenção: Tem certeza que deseja fazer o encerramento da infraestrutura de cibersegurança? Sim ou Não ] \033[0m\n"
  read deletar

  if [ "$deletar" = "Sim" ] || [ "$deletar" = "SIM" ] || [ "$deletar" == "sim" ] || [ "$deletar" == "s" ] || [ "$deletar" == "S" ]; then

    echo -e "\n\033[1;33m- [ Encerrando toda a Infraestrutura. Aguarde! ] \033[0m\n"
    awk -v new_value_1="$aws_access_key" 'NR == 2 {print "aws_access_key: " new_value_1} NR != 2' "$arquivo_destino" > tmpfile && mv tmpfile "$arquivo_destino"
    awk -v new_value_2="$aws_secret_key" 'NR == 3 {print "aws_secret_key: " new_value_2} NR != 3' "$arquivo_destino" > tmpfile && mv tmpfile "$arquivo_destino"
    awk -v new_value_3="$aws_session_token" 'NR == 4 {print "aws_session_token: " new_value_3} NR != 4' "$arquivo_destino" > tmpfile && mv tmpfile "$arquivo_destino"
    ansible-playbook -i playbook-instructor-profile/hosts playbook-instructor-profile/playbook-destruction.yaml

  elif [ "$deletar" = "Não" ] || [ "$deletar" = "NÃO" ] || [ "$deletar" == "não" ] || [ "$deletar" == "Nao" ] || [ "$deletar" = "NAO" ] || [ "$deletar" == "nao" ] || [ "$deletar" == "n" ] || [ "$deletar" == "N" ]; then

    echo -e "\n\033[1;32m- [ Muito bem, toda a infraestrutura foi mantida. Até a próxima! ] \033[0m"

  else

    echo -e "\n\033[1;33m- [ Não consegui entender o que quis dizer :( ] \033[0m"

  fi

else
  echo -e "\n\033[1;33m- [ Não consegui entender o que quis dizer :( ] \033[0m"
fi




