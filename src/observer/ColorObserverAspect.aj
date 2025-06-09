package observer;

import java.awt.Color;
import javax.swing.JOptionPane;

public aspect ColorObserverAspect {

    private int changeCount = 0;

    // Punto de corte: cuando se ejecuta setBackgroundColor con un Color
    pointcut colorChanged(Color c):
        execution(void observer.ColorWindow.setBackgroundColor(Color)) && args(c);

    after(Color c): colorChanged(c) {
        changeCount++;
        System.out.println("El color de fondo cambió a: " + colorToString(c));
        System.out.println("Cambios totales realizados: " + changeCount);

        // Funcionalidad extra: mostrar un mensaje cada 3 cambios
        if (changeCount % 3 == 0) {
            JOptionPane.showMessageDialog(null, "¡Has cambiado el color 3 veces!");
        }
    }

    private String colorToString(Color color) {
        if (Color.RED.equals(color)) return "Rojo";
        if (Color.GREEN.equals(color)) return "Verde";
        if (Color.BLUE.equals(color)) return "Azul";
        if (Color.WHITE.equals(color)) return "Blanco";
        return "RGB(" + color.getRed() + ", " + color.getGreen() + ", " + color.getBlue() + ")";
    }
}

