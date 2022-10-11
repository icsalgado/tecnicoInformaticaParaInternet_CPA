/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aula23info1;

import javax.swing.JOptionPane;

/**
 *
 * @author icsalgado
 */
public class Aula23info1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        //Estruturas de repetição
        
        for(int x=0; x<=10;x++){
            JOptionPane.showMessageDialog(null, "O valor da interação é: " + x);
        }
        /*No for a variavel é criada, testada e 
        incrmentada/decrementada dentro dos parênteses*/
        
        int y = 0;
        while(y <= 10){
            JOptionPane.showMessageDialog(null, "Ovalor da interação é: " + y);
            y++;
        }
        /*No while a variavel precisa ser criada fora do laço, é testada antes de entrar 
        na repetição e incrementada ou decrementada dentro da estrutura*/
        
        do{
            JOptionPane.showMessageDialog(null, "Ovalor da interação é: " + y);
        }while(y <= 10);
        /*No do while o laço vai ser executado no mínimo uma vez, a variavel é criada
        fora do laço e testada depois que ele é executado*/
    }
    
}
