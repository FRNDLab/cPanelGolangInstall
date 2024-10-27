# Instalación de Go y Air para Hot Reloading en cPanel

Este script permite instalar la última versión de Go en cPanel, junto con Air para hot reloading en el entorno de desarrollo de Go.

## Pasos para la instalación

### 1. Ejecutar el comando de instalación

Descarga y ejecuta el script de instalación de Go:

```bash
wget https://raw.githubusercontent.com/FRNDLab/cPanelGolangInstall/master/install_golang.sh -O install_golang.sh && bash install_golang.sh
```
### 2. Instalando Air
```bash
go install github.com/air-verse/air@latest
```
No es necesario añadir el path de Air a tu archivo .bashrc, ya que al instalarlo con Go, se ubicó automáticamente en /home/cpanel-usuario/go/bin
