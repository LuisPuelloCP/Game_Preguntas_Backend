# App

Este proyecto fue generado con NodeJS version 16.14.0. <br>
Si no cuenta con NodeJS, puede instalarlo desde el siguiente link: https://nodejs.org/en/

## Paso 1: Crear y llenar base de datos
1. Para crear y llenar previamente la base de datos, deberá tener instalado MySQL y MySQL Workbench en su computadora.
2. Ahora, el servidor de MySQL se debe estar ejecuntado el puerto 3306 para que la aplicación pueda ejecutarse correctamente.
3. Si el servidor cuenta con un usuario y contraseña, deberá verficar que estos coincidan con el usuario y contraseña del archivo db.js que se encuentra en el proyecto.
4. Luego que haya ingresado al servidor, abra el script all.sql que se encuentra en src/models y lo ejecuta en MySQL Workbench.
5. Esto generará la estructura de la base de datos con todos sus datos.

## Paso 2: Preparar el proyecto para la ejecucion
Para preparar el proyecto, solo es necesario:
1. Abrir una consola
2. Ubicarse en la carpeta del proyecto.
3. Ejecutar el comando "npm install" en la consola.
4. Esto generara la carpeta node_modules que contendrá todo lo que necesita la aplicación para funcionar.

## Paso 3: Ejecutar el servidor
Para ejecutar el servidor, solo debemos:
1. Abrir una consola
2. Ubicarse en la carpeta del proyecto.
3. Ejecutar el comando "npm run dev" en la consola.
4. Esto ejecutara un servidor local en puerto 3000 http://localhost:3000/



## Advertencia
Para que la aplicacion funcione correctamente, debe usar la otra parte de este proyecto. <br>
Este es link del proyecto complementario https://github.com/LuisPuelloCP/Game_Preguntas_Frontend <br>
Siga las instrucciones y luego, ejecute los dos proyectos al tiempo.
