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
