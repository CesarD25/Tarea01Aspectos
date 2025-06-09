package observer;

import java.awt.Color;

public aspect ColorObserverAspect {
    
    // Punto de corte: cuando se llama al método setBackgroundColor
    pointcut colorChanged(Color c): 
        execution(void ColorWindow.setBackgroundColor(Color)) && args(c);

    // Advice después de cambiar color para imprimir en consola
    after(Color c): colorChanged(c) {
        System.out.println("El color de fondo cambió a: " + colorToString(c));
    }

    // Método auxiliar para convertir Color a String legible
    private String colorToString(Color color) {
        if (Color.RED.equals(color)) return "Rojo";
        if (Color.GREEN.equals(color)) return "Verde";
        if (Color.BLUE.equals(color)) return "Azul";
        return "Color desconocido";
    }
}
