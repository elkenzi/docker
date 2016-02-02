# Docker for tamtam Pro
Installation et configuration des applications et de l'envirenement dev de tamtam Pro

## 1. Installation de docker

### Pour les utilisateur linux
- Exemple: ubunto
https://docs.docker.com/engine/installation/ubuntulinux/

### pour les utilisateurs Mac et windows
https://www.docker.com/products/docker-toolbox

il faut bien vérifier qu'une machine dans le nom est 'default' a été bien bien dans le virtual box

## 2. Définir les virtual hosts

Dans votre ligne de commande tapez:
```php
docker-machine ip default      //il va afficher par exemple: 192.168.99.100
```
aprés dans votre dosser hosts vous ajoutez
192.168.99.100  sso.ttp.dev
192.168.99.100  btb.ttp.dev
192.168.99.100  api.ttp.dev

## 3. Preparez votre espace de travail

Il faut tout d'abord choisir le dossier de votre espace de travail.
- si le dossier (ws: work space)est un sous repertoire du dossier "Users" si ok.
- sinon:
  - il faut partager votre ws avec la machine virtuel en créeant un point de montage avec le nom 'www'
  - création d'un ficher bootlocal.sh dans /var/lib/boot2docker/bootlocal.sh
  - mettez ce code dans ce fichier:
```php
mkdir /var/www
mount -t vboxsf www /var/www
```

## 4. Clonnez le projet de la configuration docker

Accédez à votre espace de travail puis:

```php
git clone git@github.com:elkenzi/docker.git
```

puis:

```php
./docker/script/init.sh
```

