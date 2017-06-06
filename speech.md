## Diapositiva: Taller de programación musical
- Saludos y preguntar de dónde vienen.

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
- Lo que vamos a hacer para decirle que toque la nota es escribir play y el número de la nota. Una vez que escriben play, espacio, número de la nota, pueden apretar en play y escuchar. Reproducir primer ejemplo.
- ¿Y esta nota? ¿Es más grave o más aguda?
- ¿Y, cómo escribo una más aguda?

## Diapositiva: Tiempo
- La parte que nos faltaba para armar una canción con las notas es el tiempo.
- ¿Para qué no servía el tiempo?
- Para decirle a Sonic-Pi cuándo tocar la nota.
- El tiempo en las canciones se determina por pulsos. Puedo elegir en qué pulso poner mis notas.
- Como ven en el ejemplo (aclarar que no es Sonic-Pi), cada cuadradito es un pulso, en el primer pulso tengo un platillo, ¿en qué pulso tengo otro?. En el 5. Darle play.
- ¿Cómo hago para tener una nota o un instrumento (en este caso), al mismo tiempo?
- Toco el instrumento o la nota en el mismo pulso. Reprduzo el otro ejemplo.

## Diapositiva: Controlando el tiempo
- ¿Cómo hacemos esto en Sonic-Pi? Con sleep.
- Con sleep puedo decirle a Sonic-Pi que espere hasta el pulso que quiera, para poder hacer otro sonido.
- Acá pueden ver un ejemplo. ¿Qué hace este ejemplo?
- Toca una nota, espera al próximo pulso. En el próximo pulso, toca otra nota, y así hasta terminar.
- Poner play al ejemplo.

## Diapositiva: Ejercicio
- Bueno, ahora, vamos a escribir nuestro primer programa, que haga sonidos de más graves a más agudos, ¡manos a la obra!.
