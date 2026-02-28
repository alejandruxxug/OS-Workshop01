# 🖥️ Taller 1 - Sistemas Operativos

### Universidad EIA | 2026

---

## 1. 📁 Explique para qué se usa cada uno de los siguientes directorios en el kernel Linux:


| Directorio | Explicación                                                                                                                   |
| ---------- | ----------------------------------------------------------------------------------------------------------------------------- |
| `bin`      | Usado para almacenar binarios del usuario. Son comandos que deben de funcionar incluso en modo de recuperación.               |
| `opt`      | Son ficheros de aplicaciones externas que no se integran en /usr. Es decir estosno siguen la jerarquia estandar.              |
| `boot`     | Son archivos ejecutables y requeridos para el arranque.                                                                       |
| `dev`      | Son archivos de infomacion de todos los volúmenes. Estos representan dispotivos ya sean discos, particiones, terminales, etc. |
| `sbin`     | Son archivos binarios del sistema. Usados principalmente por root.                                                            |
| `etc`      | Son archivos de configuración del sisema y de las aplicaciones.                                                               |
| `home`     | Es el directorio principal con las carpetas del usuario.                                                                      |
| `srv`      | Son archivos relativos a servidores web, FTP, etc. Son archivos de servicios.                                                 |
| `lib`      | Son bibliotecas compartidas y requeridas para los binarios de /bin.                                                           |
| `tmp`      | Son archivos temporales.                                                                                                      |
| `usr`      | Son archivos de programas y aplicaciones instaladas.                                                                          |
| `media`    | Es el directorio de montaje de volúmenes extraibles.                                                                          |
| `var`      | Archivos de variables. pueden ser logs, cache, bases de datos, colas de impresión, etc.                                       |
| `mnt`      | Puntos de montaje manuales para discos, particiones o sistemas de archivos temporales.                                        |


> Extraído de las diapositivas y complementado con búsquedas en la web.

---

## 2. ✏️ Editor de Texto VIM

### Instalación y pruebas básicas

> Instale VIM y realice pruebas básicas como modificar un archivo.

```bash
# Para instalar vim en MacOS (con homebrew porque lo tenía desde antes)

brew install vim
```

### ¿Cuál es más de su gusto? ¿Por qué?

> *Por facilidad de usar NANO es muy claro ya que tiene los comandos basicos visibles en la interfaz, en cambio nano uno tiene que usar las keybinds para navegar y si uno no las conoce pues se sentiria muy foreign el editor. Pero en su tiempo(ya que VIM tiene 34 años) me puedo imagino como este revolucionó la indistria ya que integraba lectura facil de código. Si yo fuera un desarollador de hace 20 años VIM seria mi go-to pero ahora como hay alternativas más modernas pues obvio le apunto a lo novedoso 😆.* 

### Otros editores de texto populares (sin instalar) 📌


| Editor    | Descripción                                                                                                                                                                                |
| --------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Micro     | Editor muy similar a nano en el sentido de que es simple y no es muy pesado                                                                                                                |
| Neovim    | Es un fork moderno de Vim con UI mejorada, tiene capacidad de hacer scripts con el lenguage Lua(El cual es muy bueno para embebir en aplicaciones y desarollar funcionalidades rápidamente |
| Notepad++ | Es un editor de texto mas enfocado en ser un reemplazo para el Bloc de notas, que tiene la capacidad de ser un reemplazo ligero para VSCode (Perdiendo funcionalidad, claro)               |
| Emacs     | Editor altamente modificable, tiene combinaciones de teclas para todo. Al principio hay una curva de aprendizaje alta pero es muy util.                                                    |


---

## 3. ⚡ Operadores en Bash (Carpeta 3)

> Explique y muestre con un ejemplo el uso de los siguientes operadores (sin relación con `if`, `elif`, `else`):

### a. `>`

**Explicación:**

> Este es el operador mayor que. Se usa para escribir la salida del archivo de la derecha en el archivo de la izquierda

### b. `&&`

**Explicación:**

> Este es el operador AND. Se usa para ejecutar el segundo archivo solo si el primero tuvo éxito.

### c. `|`

**Explicación:**

> Este es el operador PIPE. Sirve para iniciar dos procesos de shell al tiempo. El PIPE es un canal de una sola vuelta o sea que la salida de el proceso de la izquierda es la entrada del proceso de la derecha(Siendo estrictos es la salida de stdout).

---

## 4. 🔍 Comandos `find` y `grep`

### `find`

**Explicación:**

>  Find se usa para buscar en el sistema de archivos y directorios. La entrada es el nombre del archivo con extensión. Tiene muchas funcionalidades extra como buscar los  archivos modificados en los ultimos dias, buscar por peso, tambien se puede buscar y ejecutar un comando en cada resultado, y tambien se puede buscar por la extension del archivo.

```bash
# Buscar archivos por nombre
find . -name "*.txt"

# Buscar solo directorios
find /home -type d -name "docs"

# Buscar archivos modificados en los últimos 7 días
find . -mtime -7

# Buscar archivos mayores a 10MB
find . -size +10M

# Buscar y ejecutar un comando en cada resultado
find . -name "*.log" -exec rm {} \;

# Buscar por extensión (case insensitive)
find . -iname "*.PDF"

# Estructura básica
find directorio -nombre "*.extensión"
```

### `grep`

**Explicación:**

> Se usa para buscar texto dentro de archivos o salidas de archivos. Puede buscar en todos los archvios de una carpeta, listar lineas en las que no coincide, hacer que la busqeuda sea case insensitive(Que no importen las mayúsculas) y tambien que nos muestre los numeros de las lineas que contienen nuestra búsqueda.

```bash
# Buscar "error" en un archivo
grep "error" archivo.log

# Buscar en varios archivos
grep "TODO" *.py

# Buscar en todos los archivos de una carpeta recursivamente
grep -r "palabra" ./documentos/

# Case insensitive
grep -i "warning" log.txt

# Mostrar solo las líneas que NO coinciden
grep -v "comentario" config.txt

# Mostrar números de línea
grep -n "función" script.sh

# Estructura básica 
grep "busqueda" archivo.extensión
```

---

## 5. 🃏 Comodines (Wildcards)

**¿Qué son los comodines?**

> Son caracteres que nos dejan emparejar nombres de archivos con patrones, en vez de escribirlos directamente(Cualquier cadena de texto).

### Ejemplos 📝

#### `*`

> Si coinciden 0 o mas caracteres

```bash
# Listar todos los archivos con extension .txt
ls *.txt

# Borrar todos los .log
rm *.log 
```

#### `?`

> Si coincide solamente un caracter

```bash
# Encuentra file1.text, file2.txt, fileA.txt, etc
ls file?.txt
# Busca archivos con solo 3 caracteres.
ls ???.txt
```

#### `[]`

>  Si coinciden uno de los caracteres adentro de los corchetes.

```bash
# Encuentra solo file1.txt, file2.txt, file3.txt
ls file[123].txt 

# Filtra entre el rango de numeros
ls report[0-9].pdf # report0.pdf ... report9.pdf
  
# Usando en conjunto podemos hacer unos buenos filtros. Aqui encuentra archivos que empiezan   # por "a".
ls [Aa]*           
```

---

## 6. 🔢 Condicionales con números flotantes en Bash

> Muestre cómo usar `if` o `elif` cuando la condición depende de un número flotante.  
> Ejemplo: mostrar un mensaje si una variable es mayor a `4.5`

```bash
# Script aquí
```

---

## 7. 📊 Scripts - Arreglos

### a. Número máximo y mínimo de un arreglo

```bash
# Script aquí
```

### b. Encontrar un elemento particular en un arreglo

```bash
# Script aquí
```

### c. Contar cuántas veces se encuentra un elemento

```bash
# Script aquí
```

### d. Ordenar un arreglo de forma ascendente o descendente

```bash
# Script aquí
```

---

## 8. 📂 Scripts - Carpetas y Archivos

### a. Crear una carpeta con X subcarpetas

> X debe ser solicitado por consola.

```bash
# Script aquí
```

### b. Crear carpetas con archivos de texto con nombres aleatorios

> Crear una carpeta con X subcarpetas, cada una con Y archivos de texto con nombres numéricos aleatorios.

```bash
# Script aquí
```

### c. Renombrar archivos con nombre par a nombre impar

> Usando el resultado del script anterior, renombrar todos los archivos con nombre par por un nombre impar.

```bash
# Script aquí
```

---

## 9. 📁 Scripts - Gestión de Archivos

### a. Mostrar el tamaño de cada archivo en una carpeta

```bash
# Script aquí
```

### b. Contar subcarpetas y archivos dentro de cada una

```bash
# Script aquí
```

### c. Comprimir archivos y/o carpetas dentro de una carpeta

```bash
# Script aquí
```

### d. Archivos modificados en las últimas 24 horas

```bash
# Script aquí
```

### e. Archivos que superan un peso en particular

```bash
# Script aquí
```

---

## 10. 📋 Uso de parámetros al correr un archivo `.sh`

**Explicación:**

```bash
# Ejemplo
```

---

## 11. ⚙️ Comando `awk`

**¿Qué es `awk`?**

> *Escriba su explicación aquí*

### Ejemplo 1:

```bash
# Ejemplo
```

### Ejemplo 2:

```bash
# Ejemplo
```

