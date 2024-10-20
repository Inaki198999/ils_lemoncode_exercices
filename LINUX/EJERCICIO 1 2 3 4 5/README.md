# Ejercicios

## Ejercicios CLI

### 1. Crea mediante comandos de bash la siguiente jerarquía de ficheros y directorios

```bash
foo/
├─ dummy/
│  ├─ file1.txt
│  ├─ file2.txt
├─ empty/
```

Donde `file1.txt` debe contener el siguiente texto:

```bash
Me encanta la bash!!
```

Y `file2.txt` debe permanecer vacío.

### SOLUCION
# Crear los directorios necesarios
mkdir -p foo/dummy foo/empty

# Crear los archivos file1.txt y file2.txt dentro de dummy
echo "Me encanta la bash!!" > foo/dummy/file1.txt
touch foo/dummy/file2.txt



### 2. Mediante comandos de bash, vuelca el contenido de file1.txt a file2.txt y mueve file2.txt a la carpeta empty

El resultado de los comandos ejecutados sobre la jerarquía anterior deben dar el siguiente resultado.

```bash
foo/
├─ dummy/
│  ├─ file1.txt
├─ empty/
  ├─ file2.txt
```

Donde `file1.txt` y `file2.txt` deben contener el siguiente texto:

```bash
Me encanta la bash!!
```

### SOLUCION

# Volcar el contenido de file1.txt en file2.txt
cat foo/dummy/file1.txt > foo/dummy/file2.txt

# Mover file2.txt a la carpeta empty
mv foo/dummy/file2.txt foo/empty/



### 3. Crear un script de bash que agrupe los pasos de los ejercicios anteriores y además permita establecer el texto de file1.txt alimentándose como parámetro al invocarlo

Si se le pasa un texto vacío al invocar el script, el texto de los ficheros, el texto por defecto será:

```bash
Que me gusta la bash!!!!
```


### COMO LLAMAR AL SCRIPT
## PRIMERO MODIFICO PERMISOS (LE DOY PERMISOS DE EJCUCION)

chmod +x crear_estructura.sh

## PASANDOLE UN ARGUMENTO

./crear_estructura.sh "Me encanta la bash!!"

## VALOR PREDETERMINADO

./crear_estructura.sh


### 4. Crea un script de bash que descargue el contenido de una página web a un fichero y busque en dicho fichero una palabra dada como parámetro al invocar el script

La URL de dicha página web será una constante en el script.

Si tras buscar la palabra no aparece en el fichero, se mostrará el siguiente mensaje:

```bash
$ ejercicio4.sh patata
> No se ha encontrado la palabra "patata"
```

Si por el contrario la palabra aparece en la búsqueda, se mostrará el siguiente mensaje:

```bash
$ ejercicio4.sh patata
> La palabra "patata" aparece 3 veces
> Aparece por primera vez en la línea 27
```

### EJECUCION DEL SCRIPT

## PERMISOS DE EJECUCION

chmod +x buscar_palabra.sh

## EJECUTARLO

./buscar_palabra.sh docker



### 5. OPCIONAL - Modifica el ejercicio anterior de forma que la URL de la página web se pase por parámetro y también verifique que la llamada al script sea correcta

Si al invocar el script este no recibe dos parámetros (URL y palabra a buscar), se deberá de mostrar el siguiente mensaje:

```bash
$ ejercicio5.sh https://lemoncode.net/ patata 27
> Se necesitan únicamente dos parámetros para ejecutar este script
```

Además, si la palabra sólo se encuentra una vez en el fichero, se mostrará el siguiente mensaje:

```bash
$ ejercicio5.sh https://lemoncode.net/ patata
> La palabra "patata" aparece 1 vez
> Aparece únicamente en la línea 27
```

## PERMISOS DE EJECUCION

chmod +x buscar_palabra_modificado.sh

### EJEMPLO

./buscar_palabra_modificado.sh https://www.returngis.net/ docker
