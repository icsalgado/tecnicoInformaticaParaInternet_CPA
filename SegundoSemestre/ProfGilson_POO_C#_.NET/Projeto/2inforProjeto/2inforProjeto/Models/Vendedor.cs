using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace _2inforProjeto.Models
{
    public class Carro
    {
        public String idVendedor { get; set; }
        public String Nome { get; set; }
        public String CPF { get; set; }
        public String RG { get; set; }

        public void Deletar(String idVendedor)
        {
            String ComandoSQL = "DELETE FROM Vendedor WHERE idVendedor = " + idVendedor;
            Conexao conexao = new Conexao();

            conexao.DeletarLinhaNoBanco(ComandoSQL);
        }

        public void Alterar(String idVendedor, string nome, string rg, string cpf)
        {
            String ComandoSQL = "update Vendedor set nome='" + nome +"' , cpf = '" + cpf + "' , rg= '" + rg + "' where idVendedor=" + idVendedor;
            Conexao conexao = new Conexao();

            conexao.Alterar(ComandoSQL);
        }



        public List<Carro> Listar()
        {
            List<Carro> lista = new List<Carro>();
            String SQL = "SELECT * FROM Vendedor";
            Conexao conexao = new Conexao();
            DataTable dt = new DataTable();

            dt = conexao.QueryBanco(SQL);

            foreach (DataRow linha in dt.Rows)
            {
                Carro Vendedor = new Carro();
                Vendedor.idVendedor = linha["idVendedor"].ToString();
                Vendedor.CPF = linha["cpf"].ToString();
                Vendedor.Nome = linha["Nome"].ToString();
                Vendedor.RG = linha["rg"].ToString();

                lista.Add(Vendedor);
            }
            return lista;
        }

        public Carro Consultar(String idVendedor)
        {
            Carro VendedoraSerEditado = new Carro();
            String SQL = "SELECT * FROM Vendedor WHERE idVendedor = " + idVendedor;
            Conexao conexao = new Conexao();
            DataTable dt = new DataTable();
            dt = conexao.QueryBanco(SQL);
            foreach (DataRow linha in dt.Rows)
            {
                VendedoraSerEditado.idVendedor = linha["idVendedor"].ToString();
                VendedoraSerEditado.CPF = linha["cpf"].ToString();
                VendedoraSerEditado.Nome = linha["Nome"].ToString();
                VendedoraSerEditado.RG = linha["rg"].ToString();
            }
            return VendedoraSerEditado;
        }
    }
}