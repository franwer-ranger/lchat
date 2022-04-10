<h1 align=center> lchat proyect </h1>

>*Francisco Barahona Guzmán, 2 ASIR*  

<br/>

### El proyecto **lchat** es una aplicación hecha en Ruby on Rails que permite la comunicación entre grupos de personas en tiempo real.

------
<br/>
<div align=center style="width: 100%; background: white; text-align: center; margin: 1rem auto; align: center;">
  <img
    src="https://upload.wikimedia.org/wikipedia/commons/6/62/Ruby_On_Rails_Logo.svg"
    alt="Ruby on Rails"
    style="margin: 2rem auto; width: 350px; height: 150px;">
</div>

>[Ruby on Rails](https://rubyonrails.org/) es un framework MVC (Modelo Vista Controlador) de Ruby que proporciona herramientas para crear una aplicación web fullstack de una manera bastante sencilla, ya que asume un monton de cosas que necesitas para empezar a hacer una aplicación.<br/> 
Un punto importante para mí sobre la filosofía de Rails es "Convención sobre configuración", esto acaba traduciendose en que sin apenas configuración, y escribiendo de manera correcta y en el lugar correcto (mayúsculas en su sitio, singulares y plurales, etc) rails hace su magia y enseguida todo funciona.

<br/>

Algunos de los puntos importantes del stack de esta aplicación en Rails son: 
<br/>
<div style="width: 100%; background: white; min-height: 120px; text-align: center; margin: 0 0 1rem 0; align: center;">
  <img
    src="https://repository-images.githubusercontent.com/152975883/2001d080-e823-11e9-98c5-27c697c21b4c"
    alt="Stimulus Reflex"
    style="width: 250px; height: 120px;">
</div>

>Para el envío de mensajes (entre otras cosas) el app utiliza [Stimulus Reflex](https://docs.stimulusreflex.com/), una tecnología que permite la comunicación del cliente con el backend a través de sockets (sin peticiones http ni recargas de página)

<div style="width: 100%; background: white; text-align: center; margin: 1rem auto; align: center;">
  <img
    src="https://raw.githubusercontent.com/franwer-ranger/lchat/master/app/assets/images/cable_ready.png"
    alt="CableReady"
    style="margin: 0 auto; padding: 2rem 0; width: 250px;">
</div>

>Y la gema que hace posible que los cambios de estado del app se envien a través de los websockets a los clientes es [CableReady](https://cableready.stimulusreflex.com/)


<br/>

Otras tecnologías muy importantes en este proyecto son:

- **MySQL**: Gestor de base de datos  
- **Redis**: almacén de datos en memoria  
- **StimulusJS**: framework de javascript  
- **TailwindCSS**: framework de CSS  
- **SASS**: extensión del lenguaje CSS  
- **HAML**: una manera de escribir HTML limpio y elegante


<h1 style="margin: 3rem 0;"> Proximamente... </h1>

## Setup entorno local

A continuación voy a explicar como instalar el entorno para hacer correr la aplicación en local. Yo uso macOS, pero los comandos para Linux son muy parecidos si no los mismos. Para usuarios de Windows recomiendo usar WSL (Windows subsystem for Linux) ya que permite correr ejecutables de Linux nativamente.

Mi gestor de paquetes en macOS es [Homebrew](https://brew.sh/index_es), así que para instalar ruby usaré brew y lo que instalaré será [rbenv](https://github.com/rbenv/rbenv), un gestor de versiones de ruby: <br><br>
```zsh 
brew install rbenv ruby-build  

# Agregando rbenv a bash para que se cargue cada vez que abra una terminal 
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.zshrc
source ~/.zshrc
```
Ahora si, instalamos ruby y ponemos la version como defecto:

```zsh 
rbenv install 3.1.1
rbenv global 3.1.1
```
Para comprobar que todo va bien, podemos lanzar ```ruby -v ```

Continuaré con Rails
<br><br>

## Getting started con Ruby on Rails

Rails viene con una serie de scripts llamados generadores que sirven para hacer más fácil la vida del desarrollador creando todo lo necesario para trabajar en una tarea. Uno de ellos es el generador de aplicaciones, que proporciona la base de una nueva aplicación.

```zsh 
rails new lchat --database mysql
cd lchat
```
El comando anterior genera una serie de archivos y subdirectorios dentro del directorio ```lchat``` que conforman la estructura de la aplicación. No explicaré todos, pero los más importantes son: <br>
- **```app/```** Contiene los controladores, modelos, vistas, helpers, mailers, channels, jobs y assets del app. Pasaré la mayoría del tiempo trabajando dentro de esta carpeta.
- **```config/```** Contiene ficheros de configuración como el de las rutas (routes.rb), base de datos (database.yml) o de los diferentes entornos (environments/development.rb, environments/test.rb, environments/production.rb)
- **```db/```** Contiene el esquema (schema.rb) y las migraciones (que se utilizan para editar el esquema de la bbdd).
- **```Gemfile```** y **```Gemfile.lock```**. Estos dos archivos permiten especificar las gemas (básicamente paquetes de software) y dependencias del proyecto. Estos archivos los usa el [Bundler](https://bundler.io/), otra gema.



## Algunas configuraciones

- Configuración TailwindCSS
- Configuración Webpacker 5
- Archivos importantes
- Configuración Devise (gema para la autenticación)
- Configuración ActionCable y CableReady
- Utilización de Stimulus Reflex

## Proceso de deployment con Heroku

## Usando el app