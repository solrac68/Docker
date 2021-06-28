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