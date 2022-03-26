<h1 align=center> lchat proyect </h1>

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

- Base de datos con **MySQL**
- **StimulusJS**: framework de javascript
- **SASS**: extensión del lenguaje CSS
- **HAML**: una manera de escribir HTML limpio y elegante
- **TailwindCSS**: framework de CSS

<br/>

Otras tecnologías muy importantes en este proyecto son:

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


<h1 style="margin: 3rem 0;"> Proximamente... </h1>

## Setup entorno local

## Getting started con Ruby on Rails

## Algunas configuraciones

- Configuración TailwindCSS
- Configuración Webpacker 5
- Archivos importantes
- Configuración Devise (gema para la autenticación)
- Configuración ActionCable y CableReady
- Utilización de Stimulus Reflex

## Proceso de deployment con Heroku

## Usando el app