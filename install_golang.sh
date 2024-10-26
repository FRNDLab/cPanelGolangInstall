#!/bin/bash
CWD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

GO_LATEST=$(curl -s https://go.dev/VERSION?m=text | head -n 1)

cd ~
echo "Descargando versión $GO_LATEST..."
wget "https://go.dev/dl/$GO_LATEST.linux-amd64.tar.gz" -O $GO_LATEST.linux-amd64.tar.gz

tar xvfz $GO_LATEST.linux-amd64.tar.gz

rm -rf $/go
rm -f $GO_LATEST.linux-amd64.tar.gz

echo "Creando entorno..."
mkdir ~/bin 2>/dev/null
cd ~/bin

rm -f go
ln -s ~/go/bin/go go

echo "Escribiendo variables..."
sed -i '/:~\/bin:~\/go\/bin/d' ~/.bashrc
echo 'PATH=$PATH:$HOME/bin:$HOME/go/bin' >> ~/.bashrc && source ~/.bashrc

sed -i '/^alias go=/d' ~/.bashrc
echo 'alias go="export GOPATH=$HOME/go; export TMPDIR=$HOME/tmp/; go"' >> ~/.bashrc && source ~/.bashrc

echo -n "go version: "
go version

rm -f $CWD/install_golang.sh

echo "Golang Instalado Correctamente!"
