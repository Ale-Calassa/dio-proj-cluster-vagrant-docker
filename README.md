# 🐳 Cluster Docker Swarm com Vagrant 🐳

Este projeto tem como objetivo criar um **Cluster Docker Swarm local** utilizando **máquinas virtuais provisionadas com Vagrant**, automatizando a configuração de ambiente para desenvolvedores e evitando implementações manuais.

---

## 📜 Descrição

Neste desafio, aplicamos conhecimentos de **Vagrant**, **Docker** e **Swarm** para construir um ambiente distribuído e escalável. A proposta é criar um cluster que simula um ambiente de produção, com múltiplos nós e serviços replicados automaticamente.

---

## Estrutura do Projeto

- `Vagrantfile`: Define 4 máquinas virtuais com IPs fixos
  - `master`: Nó gerenciador do cluster
  - `node01`, `node02`, `node03`: Nós workers
- `docker.sh`: Script de instalação do Docker e Docker Compose
- `master.sh`: Inicializa o Swarm, gera token de join e sobe o serviço Apache com 12 réplicas
- `worker.sh`: Script gerado automaticamente para ingressar os workers no cluster
- `apache/`: Pasta com os arquivos do serviço web
  - `Dockerfile`: Imagem personalizada do Apache
  - `index.html`: Página de boas-vindas
  - `arquivo01.txt`, `arquivo02.txt`: Arquivos adicionais incluídos no volume
  - `docker-compose.yml`: Define o serviço com 12 réplicas e volume compartilhado

---

## Tecnologias Utilizadas

- [Vagrant](https://www.vagrantup.com/)
- [VirtualBox](https://www.virtualbox.org/)
- [Docker](https://www.docker.com/)
- [Docker Swarm](https://docs.docker.com/engine/swarm/)
- [Apache HTTP Server](https://httpd.apache.org/)

---

## Como Executar

1. Clone o repositório:
   ```bash
   git clone https://github.com/Ale-Calassa/dio-proj-cluster-vagrant-docker.git
   cd dio-proj-cluster-vagrant-docker
2. Execute o ambiente:
   - vagrant up

3. Acesse o serviço:
   - Abra o navegador em http://10.10.10.100:8080
