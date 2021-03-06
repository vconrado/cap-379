# Avaliação do Algoritmo de Monte Carlo da biblioteca Numcosmo
Este trabalho trata da avaliação do algoritmo de Monte Carlo da biblioteca [Numcosmo](https://numcosmo.github.io/), como parte da avaliação da disciplina CAP-379 - Tópicos Avançados em Computação Aplicada do INPE.

## Instalando o Numcosmo

Um dos primeiros desafios para a avaliação do algoritmo de Monte Carlo foi a instalação da biblioteca Numcosmo, devido a falta de documentação de dependências necessárias para a sua instalação e execução. Para facilitar a replicação dos testes, foi criado um [script](https://raw.githubusercontent.com/vconrado/cap-379/master/docker/numcosmo/files/install_numcosmo.sh) e um [Docker](http://www.docker.com) ([Como instalar no Ubuntu 16.04](https://www.digitalocean.com/community/tutorials/como-instalar-e-usar-o-docker-no-ubuntu-16-04-pt)) com o Numcosmo configurado.
O docker é criado a partir do script de instalação. Neste script, é criado um usuário **numcosmo** (senha **numcosmo**) e feita a instalação seguindo as orientações do projeto [Numcosmo](https://numcosmo.github.io/download/).

Para ter a biblioteca Numcosmo rodando na sua máquina, utilize uma das soluções abaixo:

1. Baixa e executa o docker já preparado (**versão recomendada**):

```bash
docker run -it --name numcosmo vconrado/numcosmo /bin/bash
```

2. Constrói o docker a partir do Dockerfile e script:
```bash
git clone https://github.com/vconrado/cap-379.git
cd cap-379/docker/numcosmo
docker build .
```

3. Instala o numcosmo no seu computador. (**versão não recomendata/testada**)

```bash
git clone https://github.com/vconrado/cap-379.git
sudo bash cap-379/docker/numcosmo/files/install_numcosmo.sh
```


## Usando o docker
O docker é iniciado com o usuário root. Alterne para o usuário **numcosmo** para executar os exemplos:
```bash
su - numcosmo
```

O exemplo básico pode ser executado da seguinte forma:
```bash
cd /home/numcosmo/cosmology/NumCosmo/examples
./example_simple
```

Dentro do docker, pode ocorrer erro ao tentar usar a *matplotlib* para gerar gráficos. Inclua a seguinte linha após a importação da *matplotlib*

```python
matplotlib.use('Agg')
```
