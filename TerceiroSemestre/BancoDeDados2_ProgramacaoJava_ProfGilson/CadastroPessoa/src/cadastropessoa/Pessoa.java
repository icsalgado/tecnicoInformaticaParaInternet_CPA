/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cadastropessoa;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author gnasc
 */
public class Pessoa {

    /**
     * @return the Nome
     */
    public String getNome() {
        return Nome;
    }

    /**
     * @param Nome the Nome to set
     */
    public void setNome(String Nome) {
        this.Nome = Nome;
    }

    /**
     * @return the Cpf
     */
    public String getCpf() {
        return Cpf;
    }

    /**
     * @param Cpf the Cpf to set
     */
    public void setCpf(String Cpf) {
        this.Cpf = Cpf;
    }

    /**
     * @return the RG
     */
    public String getRG() {
        return RG;
    }

    /**
     * @param RG the RG to set
     */
    public void setRG(String RG) {
        this.RG = RG;
    }

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }
    
    private String Nome;
    private String Cpf;
    private String RG;
    private int id;
        
    public void Incluir() throws SQLException
    {       
        String sql = "insert into pessoateste (nome,rg,cpf)"
                + " values ('"+ Nome + "','" + RG + "','" 
                + Cpf + "')";
        Conexao.ConexaoExecutar(sql);

    }
    public void Deletar(int id) throws SQLException
    {
        String sql = "delete from pessoateste " +
                     " where idpessoa=" + id;
        Conexao.ConexaoExecutar(sql);
    }
    
    public Pessoa Selecao(String id) throws ClassNotFoundException, SQLException
    {
       Pessoa pes = new Pessoa();
       String sql = "Select * from pessoateste " +
                    " where idpessoa = " + id;
       
       ResultSet ret = Conexao.ConexaoSelecao(sql);
        
       while (ret.next()) {
           pes.setCpf(ret.getString("cpf"));
           pes.setNome(ret.getString("nome"));
           pes.setRG(ret.getString("rg"));
       }
              
       return pes;
        
    }
    
    public void Editar(Pessoa Pes) throws SQLException
    {
       String sql = " update pessoateste set " +
                    " nome='" + Pes.Nome + "' ," +
                    " cpf = '" + Pes.Cpf + "' ," +
                    " rg='" + Pes.RG + "' " +
                    " where idpessoa=" + Pes.id;
       
       Conexao.ConexaoExecutar(sql);
    }
    
}
