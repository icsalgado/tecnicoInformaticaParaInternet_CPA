/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cadastropessoa;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author gnasc
 */
public class Conexao {
    
    public static ResultSet ConexaoSelecao(String sql) throws ClassNotFoundException, SQLException
    {
        ResultSet ret = null;
        Connection conection = null;
        String driveName = "com.mysql.jdbc.Driver";
        
        Class.forName(driveName);
        String servername = "bancoaula2.mysql.dbaas.com.br";
        String mydatabase = "bancoaula2";
        String url = "jdbc:mysql://" + servername + "/" + mydatabase;
        String usuario = "bancoaula2";
        String senha = "protasio@2020";
            
        conection = (Connection) DriverManager.getConnection(url, usuario, senha);
         
        Statement stmt = conection.createStatement();
        
        ret = stmt.executeQuery(sql);
        
        return ret;
    }
    
    public static void ConexaoExecutar(String Sql) throws SQLException
    {
        Connection conection = null;
        String driveName = "com.mysql.jdbc.Driver";
        
        try {
            Class.forName(driveName);
            String servername = "bancoaula2.mysql.dbaas.com.br";
            String mydatabase = "bancoaula2";
            String url = "jdbc:mysql://" + servername + "/" + mydatabase;
            String usuario = "bancoaula2";
            String senha = "protasio@2020";
            
            conection = (Connection) DriverManager.getConnection(url, usuario, senha);
            
            if (conection != null)
            {                
               PreparedStatement stmt = null;
               stmt = conection.prepareStatement(Sql);
               stmt.execute();
               conection.close();
            }
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Conexao.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }
    
}
