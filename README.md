# Proyecto Observer con AspectJ

## Descripción

Esta aplicación implementa el patrón Observer usando AspectJ.

- Una ventana con 3 botones (Rojo, Verde, Azul).
- Cada botón cambia el color de fondo.
- AspectJ intercepta el cambio de color e imprime:
  - El nuevo color.
  - Cuántas veces se ha cambiado.

## Funcionalidad adicional

Se implementa un contador de cambios dentro del aspecto, que lleva la cuenta cada vez que cambia el color de fondo. Este comportamiento transversal está completamente desacoplado de la lógica principal (ventana y botones).

## Instrucciones

1. Importa el proyecto en Eclipse.
2. Clic derecho en el proyecto → **Configure → Convert to AspectJ Project**.
3. Asegúrate de tener instalado **AspectJ Development Tools (AJDT)**.
4. Ejecuta `ColorWindow.java` como aplicación Java.
