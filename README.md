# docker
Installation et configuration des applications et de l'envirenement dev de tamtam Pro

## 1. Installation de docker

### Pour les utilisateur linux
- Exemple: ubunto
https://docs.docker.com/engine/installation/ubuntulinux/

## pour les utilisateurs Mac et windows
https://www.docker.com/products/docker-toolbox

## 1. Clonnez le projet de la configuration docker

Il faut tout d'abord choisir le dossier de votre espace de travail.
- si le dossier (ws: work space)est un sous repertoire du dossier "Users" si ok.
- sinon:
  - il faut partager votre ws avec la machine virtuel en créeant un point de montage avec le nom 'www'
  - création d'un ficher bootlocal.sh dans /var/lib/boot2docker/bootlocal.sh
  - mettez ce code dans ce fichier:
<script>
mkdir /var/www
mount -t vboxsf www /var/www
</script>

git clone git@github.com:elkenzi/docker.git

./docker/script/init.sh

