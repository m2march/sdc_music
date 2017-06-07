## Diapositiva: Taller de programación musical
- _Saludos y preguntar de dónde vienen._

## Diapositiva: ¿Quiénes somos?
- ¿Alguien sabe quiénes somos y dónde estamos?
- Somos estudiantes de la UBA (Universidad de Buenos Aires), y están en el Departamento de Computación de la facultad de Exactas y Naturales
- ¿Y, alguien sabe qué estudiamos?

## Diapositiva: ¿Qué estudiamos?
- Licenciatura en Ciencias de la Computación. ¿Alguien la escuchó nombrar?

## Diapositiva: ¿Qué vamos a hacer hoy?
- ¿Tienen idea de qué vamos a hacer hoy?
- Hoy vamos a hacer un taller de programación musical.
- ¿Alguna idea de qué trata?
- Hoy vamos a programar una canción (o canciones).

## Diapositiva: ¿Programar? ¿Y eso?
- ¿Quién sabe lo que es programar?
- Programar es la manera que tenemos de comunicar nuestras ideas, o lo que queremos hacer, a la computadora. Como estamos en un taller de programación musical, qué le podríamos querer decir a la computadora?
- Vamos a decirle qué sonidos tiene que reproducir, como si le hablara a un músico y le dijera qué tiene que tocar.
- Y, la computadora, entiende si yo le digo: "hacé tal sonido"? Pueden hablar inglés con un francés?
- No, para eso necesitamos un lenguaje. El lenguaje va a decir paso por paso qué sonido va a sonar.
- ¿Y, por la parte musical, vamos a hacer una canción, ¿alguien sabe qué es una canción?

## Diapositiva: Personas tocando instrumentos
- ¿Qué les parece? ¿Esto es una canción?

## Diapositiva: Partitura
- ¿Y esto? ¿Saben qué es?
- Una partitura. ¿Alguien sabe cómo se usa?
- La partitura es como una receta de cocina de música, dice en qué momento hacer un sonido y cuál.

## Diapositiva: Código
- ¿Y esto? ¿Qué es esta cosa rara acá en la pantalla?
- Esto es lo que vamos a usar hoy para comunicarnos con la computadora. Un paso a paso, como la partitura.

## Diapositiva: ¿Qué vamos a usar?
- Sonic-Pi. Es un programa gratuito, lo pueden bajar todos y usar en su casa.
- En la hoja que les dimos está la página, pueden llevarse la hoja.

## Diapositiva: Sonic-Pi
- Este es Sonic-Pi. Lo tienen todos abiertos en sus computadoras ahora.
- Lo que está marcado con el número 1, es el área donde van a escribir el lenguaje que va a entender la computadora. En cada línea, le decimos una cosa que hacer a la computadora. Es importante que cada cosa la escriban en una nueva línea apretando enter.
- Lo que se ve con el número 2, el botón de play, ¿para qué les parece que va a servir?
- Con el botón play, le decimos a la computadora que empiece a seguir nuestro paso a paso.
- Después, para el número 3, stop, ¿qué les parece?
- ¿Y el de rec?

## Diapositiva: ¿Cómo le decimos a Sonic-Pi qué sonido tocar?
- Ahora, ¿se les ocurre cómo decirle a Sonic-Pi qué sonidos, de entre todos los sonidos tocar?. ¿Qué tienen las partituras?
- Notas.

## Diapositiva: Altura
- Las notas en las canciones tienen Altura, que es cuán grave o agudo es el sonido.
- En las partituras, generalmente se usan símbolos o dibujos, en Sonic-Pi, números. Si ustedes tocan el piano o la guitarra, es como tocar esa nota en Sonic-Pi (mostrar los números en las teclas o guitarra).

## Diapositiva: Sonic-Pi Play
- Lo que vamos a hacer para decirle que toque la nota es escribir play y el número de la nota. Una vez que escriben play, espacio, número de la nota, pueden apretar en play y escuchar. _Reproducir primer ejemplo._
- ¿Y esta nota? ¿Es más grave o más aguda?
- ¿Y, cómo escribo una más aguda?
*TODO: ¿No habría que incluír un ejemplo de varios play juntos, para que vean
que suenan todos juntos? Esto va a dar la motivación para el sleep.*

## Diapositiva: Tiempo
- La parte que nos faltaba para armar una canción con las notas es el tiempo.
- ¿Para qué nos sirve el tiempo?
- El tiempo en las canciones se determina por pulsos. Puedo elegir en qué pulso poner mis notas.
- Esto también se puede hacer en Sonic-Pi. Nos sirve para decirle cuándo tocar la nota.
- Como ven en el ejemplo (_aclarar que no es Sonic-Pi_), cada línea vertical es un pulso. El platillo suena en cada pulso. _Darle play._
- Los cuadrados oscuros entre cada cuadrado clarito son divisiones del pulso.
  Sirven para poner más de un sonido en cada pulso. 
- En el segundo ejemplo el redoblante (línea dos) suena dos veces en el pulso 1
  y otras dos veces en el 3. El bombo (línea uno) suena solo en el pulso 1 y 3.
- _Reproduzco el otro ejemplo._

## Diapositiva: Controlando el tiempo
- ¿Cómo hacemos esto en Sonic-Pi? Con sleep.
- Con sleep puedo decirle a Sonic-Pi que espere hasta el pulso que quiera, para poder hacer otro sonido.
- Acá pueden ver un ejemplo. ¿Qué hace este ejemplo?
- Toca una nota, espera al próximo pulso. En el próximo pulso, toca otra nota, y así hasta terminar.
- _Poner play al ejemplo_.

## Diapositiva: Ejercicio
- Bueno, ahora, vamos a escribir nuestro primer programa, que haga sonidos de más graves a más agudos, ¡manos a la obra!.

## Diapositiva: ¡Más rápido!
- Ahora, hay algo que no vimos antes, ¿Cuánto dura un pulso? ¿Un segundo? ¿Un minuto?
- Si no decimos nada, Sonic-Pi piensa que queremos 60 pulsos por minuto, es decir, 60 cuadraditos de los que vimos antes, se tocan en un minuto.
- Con use_bpm podemos decirle cuantos pulsos por minuto queremos, cambiando la velocidad en que toca las notas.
- ¿Qué pasa si uso 120 pulsos por minuto? (Si están muy perdidos -> ¿Va más rápido o más lento?). Va más rápido toda la canción.
- Pueden probarlo rápidamente para ver cómo cambia.
*Revisar: ¿bpm desp de live_loop? ¿Condensar ejercicio después de live_loop?*

## Diapositiva: ¡A meterle ritmo!
- Bueno, ahora vamos a crear ritmos para nuestra canción, ¿cómo hacemos para repetir 2 veces lo que hicimos antes (la secuencia de más grave a más aguda)?. Muchos van a decir, copiar y pegar. Y, ¿si tengo que repetirlo para siempre?
- Tenemos el live_loop. Para usarlo, escriben live_loop, como ven en (1), le sigue en (2) dos puntos y un nombre, el que quieran, sin espacios y luego en (3), do. La idea es que lo que escribieron, tiene que quedar entre el do y el end al final.
- Prueben ahora rápido encerrar lo que escribieron con el live_loop y fijensé cómo queda su primer ritmo.

- ¿Qué pasa si uso 120 pulsos por minuto? (_Si están muy perdidos_ -> ¿Va más rápido o más lento?). Va más rápido toda la canción.

## Diapositiva: Ejercicio 2
*Revisar: Ejercicio de poner la melodía en un live_loop y
cambiar bpm. Quizá poner en la diapo la referncia del live_loop.

Volver a aclarar lo del nombre del live_loop y que eso y el nombre del sample
tiene que ir con :.*

## Diapositiva: Samples
*TODO: Recortar diapo con ejemplos de samples y referirlos al cheat sheet.
Reducir todo a una sola diapo.*

## Diapositiva: Batería
*TODO: Podemos decir que para que una canción tenga más onda se le puede
agregar una base. Eso se hace con otro instrumento. Un buen instrumento para
eso es la batería. Esto también lo podemos hacer en sonic-pi.

Presentar las partes de una batería y mostrar que hay samples para cada una.

Se les puede hacer escuchar la base de rock y preguntarles si la conocen. 

Después explicarle el patrón temporal con los números.*
