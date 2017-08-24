# Trabalho final da disciplina CAP-379 - Tópicos Avançados em Computação Aplicada
Este trabalho trata da avaliação do algoritmo de Monte Carlo da biblioteca (Numcosmo)[https://numcosmo.github.io/].


## Instalando o Numcosmo

Um dos primeiros desafios para a avaliação do algoritmo de Monte Carlo foi a instalação da biblioteca Numcosmo, devido a falta de documentação de algumas dependências necessárias para a sua instalação. Para facilitar a replicação dos testes realizados, foi criado um Docker com o Numcosmo instalado.

Para baixar diretamente a imagem do docker use:

```bash
docker run -it --name numcosmo vconrado/numcosmo /bin/bash
```

Caso queira construir o docker na sua máquina use:


```bash
git clone https://github.com/vconrado/cap-379.git
cd cap-379/docker/numcosmo
docker build .
```

Se vocẽ estiver usando ubuntu 16.04, é possível usar fazer a instalação do Numcosmo diretamente na sua máquina. Para isso, use:

```bash
git clone https://github.com/vconrado/cap-379.git
sudo cap-379/docker/numcosmo/files/install_numcosmo.sh
```
