# Avaliação do Algoritmo de Monte Carlo da biblioteca Numcosmo
Este trabalho trata da avaliação do algoritmo de Monte Carlo da biblioteca [Numcosmo](https://numcosmo.github.io/), como parte da avaliação da disciplina CAP-379 - Tópicos Avançados em Computação Aplicada do INPE.

## Instalando o Numcosmo

Um dos primeiros desafios para a avaliação do algoritmo de Monte Carlo foi a instalação da biblioteca Numcosmo, devido a falta de documentação de algumas dependências necessárias para a sua instalação. Para facilitar a replicação dos testes realizados, foi criado um [Docker](http://www.docker.com) ((Como instalar no Ubuntu 16.04)[https://www.digitalocean.com/community/tutorials/como-instalar-e-usar-o-docker-no-ubuntu-16-04-pt]) com o Numcosmo instalado.

1. Uma vez instalado o docker, para diretamente a imagem criada, use:

```bash
docker run -it --name numcosmo vconrado/numcosmo /bin/bash
```

2. Caso queira construir o docker na sua máquina use: (**versão recomendada**)
```bash
git clone https://github.com/vconrado/cap-379.git
cd cap-379/docker/numcosmo
docker build .
```

3. Se você estiver usando Ubuntu 16.04, é possível fazer a instalação do Numcosmo diretamente na sua máquina. Para isso, use:

```bash
git clone https://github.com/vconrado/cap-379.git
sudo bash cap-379/docker/numcosmo/files/install_numcosmo.sh
```

As soluções **1** e **2** são equivalentes.

### User/Password
Nas soluções aqui, é criado um usuário **numcosmo** senha **numcosmo**.
