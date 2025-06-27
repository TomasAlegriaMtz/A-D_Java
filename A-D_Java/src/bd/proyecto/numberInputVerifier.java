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
public class numberInputVerifier extends InputVerifier{
    public boolean verify(JComponent textField){
        String texto= ((JTextField)textField).getText();
        Long numero=null;
        try{
            numero = Long.valueOf(texto);
            return (numero>=0 || numero<0);
        }catch(Exception e){
            if(numero==null){
                return true;
            }
            return false;
        }
    }
}
