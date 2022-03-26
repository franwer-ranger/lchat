<h1 align=center> lchat proyect </h1>

### El proyecto **lchat** es una app hecha en Ruby on Rails que facilita la comunicación entre grupos de personas, ya sea en el ámbito laboral como de ocio.


<div style="width: 100%; background: white; text-align: center; margin: 1rem auto; align: center;">
  <img
    src="https://upload.wikimedia.org/wikipedia/commons/6/62/Ruby_On_Rails_Logo.svg"
    alt="Ruby on Rails"
    style="margin: 1rem auto; width: 250px; height: 120px;">
</div>

>[Ruby on Rails](https://rubyonrails.org/) es un framework de Ruby que proporciona herramientas para crear una aplicación web fullstack de una manera bastante sencilla.


<div style="width: 100%; background: white; min-height: 120px; text-align: center; margin: 1rem auto; align: center;">
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
