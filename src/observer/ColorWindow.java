package observer;

import javax.swing.*;
import java.awt.*;

public class ColorWindow extends JFrame {
    private JPanel panel;

    public ColorWindow() {
        super("Observer con AspectJ"); // Título ventana
        setSize(400, 300);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);

        panel = new JPanel();
        panel.setBackground(Color.WHITE);
        add(panel, BorderLayout.CENTER);

        JButton redButton = new JButton("Rojo");
        JButton greenButton = new JButton("Verde");
        JButton blueButton = new JButton("Azul");

        redButton.addActionListener(e -> setBackgroundColor(Color.RED));
        greenButton.addActionListener(e -> setBackgroundColor(Color.GREEN));
        blueButton.addActionListener(e -> setBackgroundColor(Color.BLUE));

        JPanel buttonPanel = new JPanel();
        buttonPanel.add(redButton);
        buttonPanel.add(greenButton);
        buttonPanel.add(blueButton);
        add(buttonPanel, BorderLayout.SOUTH);
    }

    public void setBackgroundColor(Color color) {
        panel.setBackground(color);
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> {
            ColorWindow window = new ColorWindow();
            window.setVisible(true);
        });
    }
}
