[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/pilGJxKP)
[![Open in Visual Studio Code](https://classroom.github.com/assets/open-in-vscode-2e0aaae1b6195c2367325f4f02e2d04e9abb55f0b24a779b69b11b9e10269abc.svg)](https://classroom.github.com/online_ide?assignment_repo_id=23435320&assignment_repo_type=AssignmentRepo)
# Lab03 - Decodificador binario a 7 segmentos.

# Integrantes
* [DANIELA MUÑOZ PAEZ](https://github.com/danimupa)
 * [JARO ANDRES SOLANO RODRIGUEZ ](https://github.com/AndresRdgz06)


# Informe

Indice:


- [Lab03 - Decodificador binario a 7 segmentos.](#lab03---decodificador-binario-a-7-segmentos)
- [Integrantes](#integrantes)
- [Informe](#informe)
  - [Documentación de los diseños implementados](#documentación-de-los-diseños-implementados)
  - [Simulaciones](#simulaciones)
  - [Evidencias de implementación](#evidencias-de-implementación)
  - [Preguntas](#preguntas)
  - [Conclusiones](#conclusiones)
  - [Referencias](#referencias)


## Documentación de los diseños implementados
    * Archivos Ejercicio #1
    [Ejercicio_1.v](Ejercicio_1.v)
    


## Simulaciones 

## Evidencias de implementacióner 
Primer Punto (https://youtu.be/ElYb9hxNZF8)
segundo Punto (https://youtu.be/CWF-pKtZPkE)
## Preguntas

Respondan las siguientes preguntas:

1. ¿Cuál es el rango máximo de salida de un sumador de 3 bits?
   En la segunda parte del laboratorio, al ingresar dos valores de 3 bits mediante los switches, el sistema debe ser capaz de representar cualquier posible resultado de esa operación. Como cada operando puede variar entre 0 y 7, el resultado de la suma puede alcanzar un valor mayor que cualquiera de las entradas individuales. Esto obliga a ampliar la cantidad de bits de salida respecto a las entradas. En la práctica, el diseño debe considerar un resultado de hasta 4 bits para garantizar que todos los valores posibles puedan visualizarse correctamente en el display.
2. En el diseño del decodificador de 7 segmentos, ¿qué estructura de Verilog modela el comportamiento de un multiplexor? Explique.
 En la primera parte del laboratorio, el decodificador de 7 segmentos se implementa utilizando la estructura case en Verilog. Esta estructura permite asignar un patrón específico de encendido de segmentos para cada valor de entrada proveniente de los switches (de 0 a F en hexadecimal). El case funciona como un multiplexor, ya que selecciona una de varias posibles salidas dependiendo del valor de entrada. De esta manera, cada número ingresado se traduce en la representación correcta en el display.

3. ¿Qué tipo de display usa la tarjeta de desarrollo DE10-Lite (ánodo común o cátodo común) y cómo afecta eso al diseño?
 La tarjeta DE10-Lite utiliza displays de 7 segmentos de ánodo común. Esto influye directamente en el diseño del decodificador implementado en la primera parte, ya que los segmentos se encienden con un nivel lógico bajo (0) y se apagan con un nivel alto (1). Por esta razón, los patrones binarios definidos en el código están invertidos respecto a un display de cátodo común. Este detalle es fundamental para que los números ingresados por los switches se visualicen correctamente en el display.
   
4. Si se quisiera realizar la implementación del sumador/restador de 4 bits, que cambios deberian hacerse al diseño implementado en la segunda parte de este laboratorio? Explique mediante diagrama de caja negra.
 Partiendo del diseño de la segunda parte, donde se realiza únicamente la suma de dos números de 3 bits, para implementar un sumador/restador de 4 bits sería necesario ampliar el tamaño de las entradas a 4 bits y añadir una señal de control que permita seleccionar entre suma y resta. Además, se debería modificar el bloque del sumador para que pueda realizar la resta mediante el uso del complemento a dos. Esto implicaría ajustar la lógica interna del módulo y posiblemente adaptar el sistema de visualización para manejar resultados negativos o mayores rangos de salida. En términos generales, el sistema pasaría de un sumador simple a un bloque aritmético más completo controlado por una señal adicional.
   
5. ¿Como debería adaptarse el diseño propuesta para que la salida del sumador muestre el resultado en sistema decimal y no en sistema hexadecimal?
En la segunda parte del laboratorio se plantea mostrar el resultado de la suma tanto en hexadecimal como en decimal. Para lograr la visualización en decimal, es necesario agregar un módulo de conversión que transforme el resultado binario de la suma en dos dígitos decimales: decenas y unidades. Este módulo analiza si el resultado es mayor o igual a 10; en ese caso, asigna 1 a las decenas y el valor restante a las unidades. Luego, cada uno de estos valores se envía a un decodificador de 7 segmentos independiente, permitiendo mostrar correctamente el resultado en dos displays. De esta manera, el sistema pasa de una representación directa en hexadecimal a una representación comprensible en sistema decimal.

## Conclusiones
Durante el desarrollo del laboratorio se logró implementar la visualización de números en un display de 7 segmentos tanto en formato hexadecimal como decimal, así como el diseño de un sistema capaz de sumar dos números de 3 bits. Sin embargo, el proceso no estuvo exento de dificultades. Uno de los principales retos fue la generación correcta de la simulación, ya que se presentaron errores relacionados con la compilación de los módulos y la organización de los archivos, lo que dificultó inicialmente la verificación del funcionamiento del código.

Asimismo, la implementación de la suma representó un desafío adicional, especialmente al momento de integrar los diferentes módulos (sumador, conversión a decimal y decodificador de 7 segmentos) y asegurar que todos trabajaran de manera conjunta. También fue necesario comprender el comportamiento del display y su lógica de activación para lograr una visualización correcta.

A pesar de estos inconvenientes, el laboratorio permitió fortalecer la comprensión del diseño digital en Verilog, la importancia de la simulación como herramienta de validación y la integración de sistemas más complejos a partir de módulos básicos. Estas dificultades contribuyeron al aprendizaje, permitiendo desarrollar habilidades para la identificación y solución de errores en futuros proyectos.


## Referencias
[1] M. M. Mano y M. D. Ciletti, Digital Design, 5th ed. Pearson, 2013.
→ Soporta: funcionamiento de sumadores, rangos de salida y sistemas combinacionales.

[2] S. Brown y Z. Vranesic, Fundamentals of Digital Logic with Verilog Design, 3rd ed. McGraw-Hill, 2013.
→ Soporta: uso de estructuras en Verilog como case, multiplexores y diseño modular.

[3] Intel Corporation, DE10-Lite User Manual, 2017.
→ Soporta: características del display de 7 segmentos (tipo ánodo común) y uso de la tarjeta.

[4] D. Harris y S. Harris, Digital Design and Computer Architecture, 2nd ed. Morgan Kaufmann, 2012.
→ Soporta: implementación de sumadores/restadores y uso del complemento a 2.

[5] Material de laboratorio, Técnicas Digitales.
→ Soporta: implementación práctica del decodificador, simulación y visualización en display.
