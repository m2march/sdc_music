% Introducción a la Programación Musical
% Semana de la Computación

## ¿Que es una canción?

Foto de gente tocando: ¿es una canción?
Foto de una partitura: ¿es una canción?
Foto de código de Sonic pi: ¿es una canción?

Esperando que la mayoría responda no, se reproduce el código y se escucha la canción. Tendría que ser algo que enganche. 

*Tarea:* escribir ese extracto

## ¿Que es una canción?

¿Que tienen en común el código y la partitura?

Son instrucciones de cómo y cuándo hacer que sonidos.

¿Porque el código (ese texto de colores) produce música?

Porque el código es una manera de darle instrucciomes a la computadora. En este caso, producir sonidos.

## ¿Que conforman a los sonidos en una canción?

* Que sonido se hace: instrumento / altura
* Cuando se hace
* Cuanto dura

Estaría bueno dar una mini intro teórica del dominio altura y tiempo. Por ejemplo, mostrar que hay notas más agudas que otras. Mostrar que pueden soñar más rápido o más lento, más frecuentes o menos frecuentes.

No estaría demás usar esos ejemplos para meter la idea de pulso, no debería serles tan ajeno. Ayuda a pensar aparte el concepto de sub divisiones.

Para esto último esta bueno poner un ejemplo rítmico piola. 

## Manos a la obra.

Ahora le toca a ustedes [alumnos] aprender a hacer esto.

## Intro sonic-pi

* Partes de la interfaz: botón play, botón stop y area de escritura. ¿Explicar los buffers para el caso de que alguna se vaya y no semana cómo volver al Buffer 1?

## Reproduciendo notas

Play 60
Run

Si pongo un numero más alto suena más agudo.
> Ejemplo <

Si pongo uno más bajo suena más grave
> Ejemplo <

Ejercicio: traten de escribir 3 notas. Una grave, una aguda y una en el medio.


Cuando lo hagan, van a escuchar todas al mismo tiempo.

## Tiempo al tiempo

Suenan todas juntas porque la computadora lee las instrucciones de arriba a abajo. Cuando lee tres veces la instrucción reproducir (play) de corrido, las ejecuta todas seguidas.

Para que eso no pase hay que darle una instrucción para que espere. Está instrucción se llama 'sleep'.

> Ejemplo <
Play 65
Sleep 1
Play 59
Sleep 1
Play 60

'Sleep 1' significa que tiene que la computadora tiene que esperar un pulso

El número puede ser más alto (y la computadora espera más) o más chico.

> Ejemplo <
Play 60
Sleep 0.5
Play 64
Sleep 1
Play 62
Sleep 0.5
Play 67
Sleep 1
Play 60

Ejercicio: escribir una melodía con tiempos variables

## Loops (ciclos)

Un loop, o ciclo, o repetición, le dice a la computadora que repita.

> Ejemplo <
live_loop :base do [c c c c, g g g g, e e e e, d d d d]
  Play 60
  Sleep 0.25
Play 60
  Sleep 0.25
Play 60
  Sleep 0.25
Play 60
sleep 0.25
Play 67
Sleep 0.25
....
End
  
## Samples

Algo que nos deja hacer la computadora es reproducir sonidos grabados de otros lados. Por eso los DJ usan la computadora como instrumento.

> Ejemplo <
Sample :intro_despacito
Sleep ?
Sample :solo_guitarra
Sleep ?
Sample: aplausos
