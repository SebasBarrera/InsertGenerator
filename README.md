# InsertGenerator
Este es un tutorial de como correr el programa
<br><br>
<i>Antes de empezar es importante que tenga en cuenta que se realizo con la version de java runtime 59.0</i>
<br><br>
## Descarga
Lo primero es clonar el repositorio, para eso nos dirigiremos en consola al directorio donde desearemos descargar el proyecto
<br>
Una vez ahí, escribiremos el comando:
<br>
<code>git clone https://github.com/SebasBarrera/InsertGenerator.git </code>
<br>
## Compilación
Ya teniendo el proyecto en nuestro directorio, hemos de compilarlo de manera correcta.
<br>
Para esto ejecutaremos el siguiente comando en el proyecto que se descargo:
<br>
<code>javac -cp src src/ui/Main.java -d bin</code>
<br>
## Ejecución
Ya compilado nuestro programa, se debe ejecutar con el comando:
<br>
<code>java -cp bin ui.Main</code>
<br>
En ese momento aparecera en consola "Cuantos Empleados va a insertar"
<br>
<i>Tenga en cuenta que minimo deben ser 20, de no ser asi debe volver a ejecutarlo</i>
<br>
<i>El limite dependera de la memoria ram desde la cual se ejecuto el programa</i>
<br>
Una vez usted ingrese la cantidad podra encontrar un archivo sql en la carpeta <b><i>data</b></i> llamado <b><i>inserts.sql</b></i> en el cual se habran generado todos los inserts y updates necesarios para la base de datos
