/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package bd.proyecto;
import javax.swing.*;

/**
 *
 * @author ricar
 */
public class floatInputVerifier extends InputVerifier{
    public boolean verify(JComponent textField){
        String texto= ((JTextField)textField).getText();
        Float numero;
        try{
            numero = Float.valueOf(texto);
            return (numero>=0 || numero<0);
        }catch(Exception e){
            return false;
        }
    }
}
