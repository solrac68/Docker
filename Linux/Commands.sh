# Información del comando pwd
$ man pwd 
$ ls /home/ubuntu -l
total 12
drwxr-xr-x 6 ubuntu ubuntu 4096 Jun 25 15:51 environment
drwxr-xr-x 5 ubuntu ubuntu 4096 Jun 21 11:13 node_modules
-rw-r--r-- 1 ubuntu ubuntu  746 Jun 21 11:13 package-lock.json

$ ls /home/ -la
$ ls /home/ -l -a
total 12
drwxr-xr-x  3 root   root   4096 Jun 21 10:37 .
drwxr-xr-x 23 root   root   4096 Jun 28 21:14 ..
drwxr-xr-x 13 ubuntu ubuntu 4096 Jun 28 21:14 ubuntu

$ ls /home -l -a
total 12
drwxr-xr-x  3 root   root   4096 Jun 21 10:37 .
drwxr-xr-x 23 root   root   4096 Jun 28 21:14 ..
drwxr-xr-x 13 ubuntu ubuntu 4096 Jun 28 21:14 ubuntu

RESUMEN
El intérprete de comandos espera que le indiquemos una línea de órdenes para ejecutar la tarea que le hayamos indicado
La sintáxis básica de una orden es COMANDO [OPCIONES] [PARÁMETROS]
Con el comando le indico qué tiene que hacer, en las opciones cómo debe hacerlo y con los parámetros le indico los elementos donde tendrá que realizar la acción
Para diferenciar entre las partes de una linea de órdenes se utilizan los espacios
Puedo obtener ayuda de cualquier comando usando man nombre_del_comando


12. Navegar por los directorios y ver su contenido
$ cd /var
carlos:/var $ cd
carlos:~ $ ls -lh
total 12K
drwxr-xr-x 7 ubuntu ubuntu 4.0K Jun 26 14:34 environment
drwxr-xr-x 5 ubuntu ubuntu 4.0K Jun 21 11:13 node_modules
-rw-r--r-- 1 ubuntu ubuntu  746 Jun 21 11:13 package-lock.json

carlos:~ $ ls -lhS
total 12K
drwxr-xr-x 7 ubuntu ubuntu 4.0K Jun 26 14:34 environment
drwxr-xr-x 5 ubuntu ubuntu 4.0K Jun 21 11:13 node_modules
-rw-r--r-- 1 ubuntu ubuntu  746 Jun 21 11:13 package-lock.json

carlos:~ $ ls -lhSr
total 12K
-rw-r--r-- 1 ubuntu ubuntu  746 Jun 21 11:13 package-lock.json
drwxr-xr-x 5 ubuntu ubuntu 4.0K Jun 21 11:13 node_modules
drwxr-xr-x 7 ubuntu ubuntu 4.0K Jun 26 14:34 environment

carlos:~/environment (main) $ ls -lt
total 24
drwxrwxr-x 2 ubuntu ubuntu 4096 Jun 27 01:12 dir1
drwxrwxr-x 2 ubuntu ubuntu 4096 Jun 25 15:51 Linux
drwxrwxr-x 2 ubuntu ubuntu 4096 Jun 25 15:51 Docker
-rw-rw-r-- 1 ubuntu ubuntu  608 Jun 23 19:55 CommandLinux.sh
-rwxrwxr-x 1 ubuntu ubuntu 1653 Jun 23 19:40 resize.sh
-rw-r--r-- 1 ubuntu ubuntu  569 Jun 17 14:44 README.md

carlos:~/environment (main) $ ls -ltr
total 24
-rw-r--r-- 1 ubuntu ubuntu  569 Jun 17 14:44 README.md
-rwxrwxr-x 1 ubuntu ubuntu 1653 Jun 23 19:40 resize.sh
-rw-rw-r-- 1 ubuntu ubuntu  608 Jun 23 19:55 CommandLinux.sh
drwxrwxr-x 2 ubuntu ubuntu 4096 Jun 25 15:51 Docker
drwxrwxr-x 2 ubuntu ubuntu 4096 Jun 25 15:51 Linux
drwxrwxr-x 2 ubuntu ubuntu 4096 Jun 27 01:12 dir1

# Rutas relativas
carlos:~ $ cd environment/dir1
carlos:~/environment/dir1 (main) $

# Directorio actual .
carlos:~/environment/dir1 (main) $ ls .
f1  f2fromhost

# Directorio padre ..
carlos:~/environment/dir1 (main) $ cd ../Docker/
carlos:~/environment/Docker (main) $

# Directorio padre de padre
carlos:~/environment/Docker (main) $ cd ../..
carlos:~ $ 

# Historia
➜  Proyectos history
.
.
2354  ls -lt
2355  clear
2356  ls
2357  cd ..
2358  ls -l
2359  ls -l go
2360  history
2361  ls

➜  Proyectos !2354
➜  Proyectos ls -lt

#15. Crear, mover y borrar ficheros y directorios
➜  Proyectos mkdir ejemplo_directorio
➜  Proyectos cd ejemplo_directorio
➜  ejemplo_directorio mkdir dir1 dir2 dir3
➜  ejemplo_directorio ls -lt
total 12
drwxrwxr-x 2 carlos carlos 4096 jul 23 16:53 dir1
drwxrwxr-x 2 carlos carlos 4096 jul 23 16:53 dir2
drwxrwxr-x 2 carlos carlos 4096 jul 23 16:53 dir3

➜  ejemplo_directorio mkdir dir1/fotos 
➜  ejemplo_directorio mkdir dir1/videos
➜  ejemplo_directorio ls -lt dir1 
total 8
drwxrwxr-x 2 carlos carlos 4096 jul 23 16:59 videos
drwxrwxr-x 2 carlos carlos 4096 jul 23 16:59 fotos

# Crea un directorio dentro de uno que no existe todavía (dir5 es creado)
➜  ejemplo_directorio mkdir -p dir5/fotos
➜  ejemplo_directorio ls -lt
total 16
drwxrwxr-x 3 carlos carlos 4096 jul 23 17:02 dir5
drwxrwxr-x 4 carlos carlos 4096 jul 23 16:59 dir1
drwxrwxr-x 2 carlos carlos 4096 jul 23 16:53 dir2
drwxrwxr-x 2 carlos carlos 4096 jul 23 16:53 dir3
➜  ejemplo_directorio ls -lt dir5
total 4
drwxrwxr-x 2 carlos carlos 4096 jul 23 17:02 fotos

# Borrar directorios y todo su contenido

➜  ejemplo_directorio rm -r dir1
➜  ejemplo_directorio ls -lt
total 12
drwxrwxr-x 3 carlos carlos 4096 jul 23 17:02 dir5
drwxrwxr-x 2 carlos carlos 4096 jul 23 16:53 dir2
drwxrwxr-x 2 carlos carlos 4096 jul 23 16:53 dir3

➜  Linux git:(main) ✗ touch informe.txt
➜  Linux git:(main) ✗ rm informe.txt 
➜  Linux git:(main) ✗ ls-lt
zsh: command not found: ls-lt
➜  Linux git:(main) ✗ ls -lt
total 8
-rw-rw-r-- 1 carlos carlos 4446 jul 23 17:15 Commands.sh
➜  Linux git:(main) ✗ 

# Mover un archivo de una carpeta a otra.
➜  dir1 git:(main) ✗ touch carta-1.txt
➜  dir1 git:(main) ✗ mv ./carta-1.txt ../dir2/
➜  dir1 git:(main) ✗ ls -lt ../dir2/
total 4
-rw-rw-r-- 1 carlos carlos 2414 jul 23 17:30 carta-1.txt

# Renombrar un archivo
➜  dir2 git:(main) ✗ ls -lt
total 4
-rw-rw-r-- 1 carlos carlos 2414 jul 23 17:30 carta-1.txt
➜  dir2 git:(main) ✗ mv carta-1.txt carta.txt
➜  dir2 git:(main) ✗ ls -lt
total 4
-rw-rw-r-- 1 carlos carlos 2414 jul 23 17:30 carta.txt

# Mover un directorio
➜  dir2 git:(main) ✗ mkdir dir21
➜  dir2 git:(main) ✗ ls
carta.txt  dir21
➜  dir2 git:(main) ✗ mv dir21/ ../dir1
➜  dir2 git:(main) ✗ ls -lt
total 4
-rw-rw-r-- 1 carlos carlos 2414 jul 23 17:30 carta.txt
➜  dir2 git:(main) ✗ ls -lt ../dir1
total 4
drwxrwxr-x 2 carlos carlos 4096 jul 23 17:36 dir21

# Comandos para conocer el espacio disponible

carlos-VivoBook-15-ASUS-Laptop-X542UF# df
S.ficheros     bloques de 1K   Usados Disponibles Uso% Montado en
udev                 8109388        0     8109388   0% /dev
tmpfs                1627752     2416     1625336   1% /run
/dev/sda2          459924552 78907236   357584664  19% /
tmpfs                8138760   109880     8028880   2% /dev/shm
tmpfs                   5120        4        5116   1% /run/lock
tmpfs                8138760        0     8138760   0% /sys/fs/cgroup
/dev/loop1            241152   241152           0 100% /snap/audacity/910
/dev/loop0            192384   192384           0 100% /snap/audacity/857
/dev/loop3             56832    56832           0 100% /snap/core18/2066
.
.

# Espacio usado desde la raiz del sistema
carlos-VivoBook-15-ASUS-Laptop-X542UF# df -h /
S.ficheros     Tamaño Usados  Disp Uso% Montado en
/dev/sda2        439G    76G  342G  19% /

# LO que ocupa el directorio actual
carlos-VivoBook-15-ASUS-Laptop-X542UF# du -sh
8,0K 

carlos-VivoBook-15-ASUS-Laptop-X542UF# cd /home
carlos-VivoBook-15-ASUS-Laptop-X542UF# pwd
/home

# Enlaces: LN

Linux git:(main) echo "info de mi fichero" > mifichero
➜  Linux git:(main) ✗ ls
Commands.sh  dir1  dir2  mifichero

➜  Linux git:(main) ✗ ln mifichero mifichero2 # Enlace duro
➜  Linux git:(main) ✗ ls -l
total 24
-rw-rw-r-- 1 carlos carlos 6699 jul 23 17:49 Commands.sh
drwxrwxr-x 3 carlos carlos 4096 jul 23 17:37 dir1
drwxrwxr-x 2 carlos carlos 4096 jul 23 17:37 dir2
-rw-rw-r-- 2 carlos carlos   19 sep 11 15:39 mifichero
-rw-rw-r-- 2 carlos carlos   19 sep 11 15:39 mifichero2

➜  Linux git:(main) ✗ ln mifichero mifichero3 # Enlace duro
➜  Linux git:(main) ✗ ls -l                  
total 28
-rw-rw-r-- 1 carlos carlos 6699 jul 23 17:49 Commands.sh
drwxrwxr-x 3 carlos carlos 4096 jul 23 17:37 dir1
drwxrwxr-x 2 carlos carlos 4096 jul 23 17:37 dir2
-rw-rw-r-- 3 carlos carlos   19 sep 11 15:39 mifichero
-rw-rw-r-- 3 carlos carlos   19 sep 11 15:39 mifichero2
-rw-rw-r-- 3 carlos carlos   19 sep 11 15:39 mifichero3

➜  Linux git:(main) ✗ cat mifichero
info de mi fichero
➜  Linux git:(main) ✗ cat mifichero2
info de mi fichero
➜  Linux git:(main) ✗ cat mifichero23
cat: mifichero23: No existe el archivo o el directorio
➜  Linux git:(main) ✗ cat mifichero3 
info de mi fichero


➜  Linux git:(main) ✗ echo "Otra Linea" > mifichero2
➜  Linux git:(main) ✗ cat mifichero
Otra Linea
➜  Linux git:(main) ✗ echo "Mas lineas" >> mifichero3
➜  Linux git:(main) ✗ cat mifichero
Otra Linea
Mas lineas

➜  Linux git:(main) ✗ rm mifichero
➜  Linux git:(main) ✗ cat mifichero
cat: mifichero: No existe el archivo o el directorio
➜  Linux git:(main) ✗ cat mifichero2
Otra Linea
Mas lineas
➜  Linux git:(main) ✗ cat mifichero3
Otra Linea
Mas lineas
➜  Linux git:(main) ✗

➜  Linux git:(main) ✗ ln -s mifichero2 mifichero_s # Enlace simbolico
➜  Linux git:(main) ✗ ls -l
total 28
-rw-rw-r-- 1 carlos carlos 8526 sep 11 15:57 Commands.sh
drwxrwxr-x 3 carlos carlos 4096 jul 23 17:37 dir1
drwxrwxr-x 2 carlos carlos 4096 jul 23 17:37 dir2
-rw-rw-r-- 2 carlos carlos   22 sep 11 15:47 mifichero2
-rw-rw-r-- 2 carlos carlos   22 sep 11 15:47 mifichero3
lrwxrwxrwx 1 carlos carlos   10 sep 11 15:56 mifichero_s -> mifichero2

➜  Linux git:(main) ✗ cat mifichero_s
Otra Linea
Mas lineas

➜  Linux git:(main) ✗ rm mifichero2
➜  Linux git:(main) ✗ ls -lt
total 24
-rw-rw-r-- 1 carlos carlos 8526 sep 11 15:57 Commands.sh
lrwxrwxrwx 1 carlos carlos   10 sep 11 15:56 mifichero_s -> mifichero2 # ESta en rojo
-rw-rw-r-- 1 carlos carlos   22 sep 11 15:47 mifichero3
drwxrwxr-x 3 carlos carlos 4096 jul 23 17:37 dir1
drwxrwxr-x 2 carlos carlos 4096 jul 23 17:37 dir2

➜  Linux git:(main) ✗ cat mifichero_s
cat: mifichero_s: No existe el archivo o el directorio

----------------------------------------------------------

➜  Linux git:(main) ✗ ln -s /etc/ etc
➜  Linux git:(main) ✗ ls -l
total 24
-rw-rw-r-- 1 carlos carlos 9354 sep 11 15:59 Commands.sh
drwxrwxr-x 3 carlos carlos 4096 jul 23 17:37 dir1
drwxrwxr-x 2 carlos carlos 4096 jul 23 17:37 dir2
lrwxrwxrwx 1 carlos carlos    5 sep 11 16:01 etc -> /etc/
-rw-rw-r-- 1 carlos carlos   22 sep 11 15:47 mifichero3
lrwxrwxrwx 1 carlos carlos   10 sep 11 15:56 mifichero_s -> mifichero2 # En rojo

➜  Linux git:(main) ✗ cd etc
➜  etc ls
acpi                           hosts                    prime-discrete
adduser.conf                   hosts.allow              printcap
alsa                           hosts.deny               profile
alternatives                   hp                       profile.d
anacrontab                     ifplugd                  protocols
apache2                        ImageMagick-6            pulse
..

➜  Linux git:(main) ✗ ls -lt
total 24
-rw-rw-r-- 1 carlos carlos 9948 sep 11 16:02 Commands.sh
lrwxrwxrwx 1 carlos carlos   10 sep 11 15:56 mifichero_s -> mifichero2
-rw-rw-r-- 1 carlos carlos   22 sep 11 15:47 mifichero3
drwxrwxr-x 3 carlos carlos 4096 jul 23 17:37 dir1
drwxrwxr-x 2 carlos carlos 4096 jul 23 17:37 dir2


24. Información sobre usuarios y grupos

sudo <user> # Ubuntu - Si no da un user se entiende que es el root
su <user> # Debian - Si no da un user se entiende que es el root

➜  Docker git:(main) ls -lt 
total 560
-rw-rw-r-- 1 carlos carlos   7300 nov 29 17:05 container1.txt
drwxrwxr-x 4 carlos carlos   4096 sep 11 16:05 Linux
-rw-rw-r-- 1 carlos carlos 196013 sep  3 16:29 21-Práctica-Docker-compose+básico.pdf
-rw-rw-r-- 1 carlos carlos 343155 sep  3 16:29 22-Práctica-Docker-Compose-mean-stack.pdf

Segunda columna usuario
Tercera columna grupo

➜  Docker git:(main) ✗ whoami
carlos
➜  Docker git:(main) ✗ groups # Los grupos a los que pertences
carlos adm cdrom sudo dip plugdev lpadmin sambashare docker

➜  Docker git:(main) ✗ sudo su
[sudo] contraseña para carlos: 
root@carlos-VivoBook-15-ASUS-Laptop-X542UF:/home/carlos/Proyectos/Docker# 

➜  Docker git:(main) ✗ id
uid=1000(carlos) gid=1000(carlos) grupos=1000(carlos),4(adm),24(cdrom),27(sudo),30(dip),46(plugdev),116(lpadmin),126(sambashare),129(docker)


➜  Docker git:(main) ✗ sudo su
[sudo] contraseña para carlos: 
root@carlos-VivoBook-15-ASUS-Laptop-X542UF:/home/carlos/Proyectos/Docker# adduser ana # Agregar el usuario Ana

# Creación de un grupo
root@carlos-VivoBook-15-ASUS-Laptop-X542UF:/home/carlos/Proyectos/Docker# addgroup alumnos
addgroup: El grupo `alumnos' ya existe.

# Cambio de grupo principal de ana
root@carlos-VivoBook-15-ASUS-Laptop-X542UF:/home/carlos/Proyectos/Docker# usermod -g alumnos ana
usermod: sin cambios

root@carlos-VivoBook-15-ASUS-Laptop-X542UF:/home/carlos/Proyectos/Docker# id ana
uid=1001(ana) gid=1002(alumnos) grupos=1002(alumnos)

root@carlos-VivoBook-15-ASUS-Laptop-X542UF:/home/carlos/Proyectos/Docker# su ana
ana@carlos-VivoBook-15-ASUS-Laptop-X542UF:/home/carlos/Proyectos/Docker$ cd

ana@carlos-VivoBook-15-ASUS-Laptop-X542UF:~$
ana@carlos-VivoBook-15-ASUS-Laptop-X542UF:~$ touch fichero_ana

# Cambio de usuario y grupo al archivo fichero_ana
root@carlos-VivoBook-15-ASUS-Laptop-X542UF:/home/ana# chown carlos:users fichero_ana
root@carlos-VivoBook-15-ASUS-Laptop-X542UF:/home/ana# ls -lt
total 12
-rw-r--r-- 1 carlos users      0 dic  7 11:58 fichero_ana
-rw-r--r-- 1 ana    alumnos 8980 dic  5 13:40 examples.desktop

# Cambio de propietario a root del fichero_ana
root@carlos-VivoBook-15-ASUS-Laptop-X542UF:/home/ana# chown root fichero_ana
root@carlos-VivoBook-15-ASUS-Laptop-X542UF:/home/ana# ls -lt
total 12
-rw-r--r-- 1 root users      0 dic  7 11:58 fichero_ana
-rw-r--r-- 1 ana  alumnos 8980 dic  5 13:40 examples.desktop
root@carlos-VivoBook-15-ASUS-Laptop-X542UF:/home/ana# 

#Cambiar solamente el grupo ()ana
root@carlos-VivoBook-15-ASUS-Laptop-X542UF:/home/ana# chown :ana fichero_ana
root@carlos-VivoBook-15-ASUS-Laptop-X542UF:/home/ana# ls -lt
total 12
-rw-r--r-- 1 root ana        0 dic  7 11:58 fichero_ana
-rw-r--r-- 1 ana  alumnos 8980 dic  5 13:40 examples.desktop

# Cambio de la contraseña ana
root@carlos-VivoBook-15-ASUS-Laptop-X542UF:/home/ana# passwd ana
Nueva contraseña: 
Vuelva a escribir la nueva contraseña: 
passwd: contraseña actualizada correctamente
root@carlos-VivoBook-15-ASUS-Laptop-X542UF:/home/ana# ^C
root@carlos-VivoBook-15-ASUS-Laptop-X542UF:/home/ana# 


26. Los permisos en los ficheros
-rw-rw-r-- 1 carlos carlos   7300 nov 29 17:05 container1.txt
-: significa que es un archivo
primer grupo: permisos del usuario
segundo grupo: permisos del grupo
tercer grupo: permisos a otros
27. Los permisos en los directorios
drwxrwxr-x 6 carlos carlos   4096 sep  3 16:01 Compose
d: directorio
r: listar el directorio: poder ver lo que contiene
w: modificar lo que contiene, escribir y borrar fichero y directorio que se encuentren dentro.
x: acceder al directorio



