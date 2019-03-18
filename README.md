## Custom Terminal

Projeto desenvolvido para a cadeira de Sistema Operacionais, onde foi solicitado a criação de um terminal customizado utilizando C.

##### Tech Stack

* Docker
* C

## How To Use

To clone and run this application, you'll need [Docker](https://www.docker.com/products/docker-desktop) installed on your computer. From your command line:

```bash
# Clone this repository.
$ git clone https://github.com/ccvictorviana/fbv.git

# Go to 'Sistema Operacionais' folder.
$ cd cd Sistemas\ Operacionais/

# Build S.O image.
$ docker build -t fbv_so .

# Run container.
$ docker run -i -t fbv_so /bin/bash
```