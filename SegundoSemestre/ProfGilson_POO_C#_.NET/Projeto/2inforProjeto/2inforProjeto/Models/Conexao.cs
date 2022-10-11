using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace _2inforProjeto.Models
{
    public class Conexao
    {
        //Construi uma propriedade
        private String StringConexao = "server=bancoaula2.mysql.dbaas.com.br;" +
                                       "User Id=bancoaula2;database=bancoaula2; password=protasio@2020";

        //Contrui um método
        public DataTable QueryBanco(String SQL)
        {
            DataTable dTabela = new DataTable();
            MySqlConnection conexao = new MySqlConnection(StringConexao);
            MySqlCommand comando = new MySqlCommand(SQL, conexao);

            conexao.Open();
            dTabela.Load(comando.ExecuteReader());
            conexao.Close();

            return dTabela;
        }

        public void DeletarLinhaNoBanco(String SQL)
        {
            MySqlConnection conexao = new MySqlConnection(StringConexao);
            MySqlCommand comando = new MySqlCommand(SQL, conexao);

            conexao.Open();
            comando.ExecuteNonQuery();
            conexao.Close();
        }

        public void Alterar(String SQL)
        {
            MySqlConnection conexao = new MySqlConnection(StringConexao);
            MySqlCommand comando = new MySqlCommand(SQL, conexao);

            conexao.Open();
            comando.ExecuteNonQuery();
            conexao.Close();
        }

    }
}