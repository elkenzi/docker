# Docker for tamtam Pro
Installation et configuration des applications et de l'envirenement dev de tamtam Pro

## 1. Installation Mac

### 1.1 Installation de docker
https://www.docker.com/products/docker-toolbox

### 1.2 Clonnez le projet de la configuration docker

En tenant compte que votre dossier espace de travail est un sous repertoir du dossier /Users (sinon voir la partie 3)

Accédez à votre espace de travail puis:

```php
git clone git@github.com:elkenzi/docker.git
```
puis:
```php
./docker/script/install.sh
```

### 1.3 Définir les virtual hosts

Dans votre invité de commandes tapez:
```php
docker-machine ip ttp      //il va afficher par exemple: 192.168.99.100
```
Aprés dans votre fichier hosts vous ajoutez:
```php
- 192.168.99.100  sso.ttp.dev
- 192.168.99.100  btb.ttp.dev
- 192.168.99.100  api.ttp.dev
```

## 2. installation windows

### 2.1 Installation de docker

https://www.docker.com/products/docker-toolbox

### 2.2 Clonnez le projet de la configuration docker

Accédez à votre espace de travail puis:

```php
git clone git@github.com:elkenzi/docker.git
```
### 2.3 Configure.sh

En ligne de commande (cmder ou git bash)
```php
./docker/script/windows/configure.sh
```

### 2.4 Définir les virtual hosts

Dans votre invité de commandes tapez:
```php
docker-machine ip ttp      //il va afficher par exemple: 192.168.99.100
```
Aprés dans votre fichier hosts vous ajoutez:
```php
- 192.168.99.100  sso.ttp.dev
- 192.168.99.100  btb.ttp.dev
- 192.168.99.100  api.ttp.dev
```

### 2.5 Preparez votre espace de travail (voir partie 3)

### 2.6 install.sh
```php
./docker/script/install.sh
```

## 3. Preparez votre espace de travail

Il faut tout d'abord choisir le dossier de votre espace de travail.
Accédez à virtualBox >> choisissez votre machine >> configuration >> dossiers partagés

- Si dans la section des dossiers permanent vous trouvez un repertoire et votre dossier workspace est un sous ce dossier de ce repertoir, ça passe.
- Sinon si la section des dossiers permanents est vide ou votre dossier workspace est dans un autre endroit: 
  - Vous ajoutez votre dossier comme dossier permanent en créant un point de montage avec le nom 'www'.
  - création d'un ficher bootlocal.sh dans /var/lib/boot2docker/bootlocal.sh
  - mettez ce code dans ce fichier:
```sh
mkdir /var/www
mount -t vboxsf -o uid=1000,gid=1000 www /var/www
```
  - modifier le fichier ./docker/docker-compose.yml en replacement
```sh
./..:/var/www  par  /var/www:/var/www
./xxx/yyy  par /var/www/docker/xxx/yyyy
```
