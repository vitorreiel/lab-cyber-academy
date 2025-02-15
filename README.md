# ⚗️ Lab Cyber Academy 🧪
<br>

O objetivo deste projeto é propor, de forma automatizada, a criação de laboratórios de pesquisa e estudo na área de Cibersegurança, utilizando Cyber Range em containers Docker em plataformas na nuvem. Com isso, através de uma aplicação combinada com métodos de Infraestrutura como Código, proponho automatizar e facilitar a criação da infraestrutura necessária para a criação dos laboratórios em instâncias EC2.

<br>

---
<br>
<br>

<div align="center"><img width="250" height="250" src="https://cdn-icons-png.flaticon.com/512/5359/5359901.png"></img></div>

<br>
<br>

> #### 🎯 Nota: É importante destacar que siga todas as instruções abaixo, para que não ocorra nenhum tipo de problema.

<br>

---

<br>

## 🔎 Pré-requisitos:
<br>

```sh
✏️ 1° Requisito - Tenha acesso a uma conta AWS Academy;

✏️ 2° Requisito - Tenha acesso a um terminal Linux com permissão de super usuário.
```

---

<br>

## 🔎 Execução:
<br>

**✏️ 1° Passo** - Clone este repositório em sua máquina local utilizando o comando abaixo no seu terminal:
```sh
git clone https://github.com/vitorreiel/lab-cyber-academy.git
```
<br>
<br>

**✏️ 2° Passo** - Acesse sua AWS Academy e inicie seu Lab. Para iniciar seu Lab, basta clicar na opção:
```sh
Start Lab
```

<br>
<br>

**✏️ 3° Passo** - Acesse sua AWS Academy e clique na opção "AWS Details". Feito isso, procure a informação "AWS CLI" e em seguida, clique na opção "Show". Com isso, copie toda sua AWS CLI, pois ela será usada posteriormente. Abaixo um exemplo de como seria uma AWS CLI:
```sh
[default] 
aws_access_key_id=xxxxxxxxxxxxxxxxxx 
aws_secret_access_key=xxxxxxxxxxxxxxxxxxxxxxxxx 
aws_session_token=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
```

<br>
<br>

**✏️ 4° Passo** - Retorne para o terminal de sua máquina local e entre no repositório "lab-cyber-academy". Feito isso, utilize o editor de texto de sua preferência para editar o arquivo "aws_cli_access". Com isso, cole sua AWS CLI copiada no passo anterior. Abaixo um exemplo de como entrar no repositório e editar o arquivo aws_cli_access:
```sh
cd lab-cyber-academy
nano aws_cli_access
```

>  🎯 **Nota:** Você pode apagar, se desejar, todo o conteúdo comentado no arquivo aws_cli_access e depois colar sua AWS CLI. Como também, pode apenas colar na útlima linha do arquivo. Fica a sua escolha.
<br>
<br>

**✏️ 5° Passo** - Por fim, execute o script para iniciação do cenário de Cibersegurança. Em seguida, digite o valor (1 ou 2), para iniciar o processo de provisionamento ou destruição de um ambiente já existente. Abaixo o comando de execução do script:
```sh
./playbook.sh
```

<br>

---

<br>

## 💾 Link do vídeo de instalação:
<br>

```sh
https://youtu.be/N25Jo9__HgI?si=bWRNxNcTFlYBwEcl
```

<br>

---
<br>

#### 🎯 Nota: Este repositório é utilizada em conjunto ao [⚗️ Lab Cyber Academy App 🧪](https://github.com/vitorreiel/lab-cyber-academy-app).

<br>

---

<div style="display: inline_block;">

   ![Badge em Desenvolvimento](http://img.shields.io/static/v1?label=STATUS&message=EM%20DESENVOLVIMENTO&color=GREEN&style=for-the-badge)

</div>
<div style="display: inline_block;">
   <img height="30" width="30" hspace="7" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/html5/html5-original.svg" />
   <img height="30" width="30" hspace="7" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/css3/css3-original.svg" />
   <img height="30" width="30" hspace="7" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/react/react-original.svg" />
   <img height="40" width="40" hspace="7" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/go/go-original-wordmark.svg" />
   <img height="30" width="30" hspace="7" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/nodejs/nodejs-original.svg" />
   <img height="34" width="34" hspace="7" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/docker/docker-original.svg" />
   <img height="34" width="30" hspace="7" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/ansible/ansible-original.svg" />
   <img height="34" width="30" hspace="7" src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/amazonwebservices/amazonwebservices-original-wordmark.svg" />
</div>
