<h1>Ejecutar aplicacion</h1>

Para la ejecucion de esta aplicacion deberemos seguir los siguientes pasos:

<ol>
  <h6><li>Iniciar Mini_Server_11</li></h6>
  <h6><li>Iniciar el servidor jetty</li></h6>
  <h6><li>Iniciar React</li></h6>
  <h6><li>Ejecutar Chrome sin CORS</li></h6>
</ol>


<h3>1.Iniciar Mini_server_11</h3>

Una vez dentro de la carpeta ejecutamos el archivo llamado __mysql_start.bat__
esto nos permitira tener una version portable de una base de datos MYSQL

<h3>2.Iniciar el servidor jetty</h3>

Cuando importamos el proyecto __activeweb-simple-master__ a NetBeans seleccionaremos la opcion *Run Maven/goals*
Posteriormente se nos abrira una ventana para ingresar el siguiente comando:

    jetty:run

<h3>3.Iniciar React</h3>

Abriremos una ventana de comando en el cual colocaremos lo siguiente:

    cd "nombre proyecto" 
    
En este caso

    cd my-app

posteriormente ejecutamos

    npm run start
   
Con esto se nos abrira una ventana en el navegador por defecto, la cual no utilizaremos,
si no que usaremos la puesta en el siguiente paso

<h3>3.Ejecutar Chrome sin CORS</h3>

Al utilizar Chrome por defecto no nos permite ejecutar el servidor jetty y React al mismo tiempo por lo que ejecutaremos los siguientes comandos en una ventana de comandos:

    "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --disable-web-security --disable-gpu --user-data-dir=~/chromeTemp
    
Con esto ya podremos abrir nuestra pagina web con __http://localhost:8080/__ para el servidor jetty
y __http://localhost:3000/__ para la pagina a travez de React.
