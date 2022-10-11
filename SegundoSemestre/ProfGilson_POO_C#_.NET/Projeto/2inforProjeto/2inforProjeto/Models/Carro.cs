using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _2inforProjeto.Models
{
    public class Carro
    {
        public String Marca { get; set; }
        public String Cilindrada { get; set; }
        public Int16 QuantidadePortas { get; set; }
        public String Cor { get; set; }
        public String Fabricante { get; set; }
    }



    public void Deletar(String Marca)
    {
        String ComandoSQL = "DELETE FROM Carro WHERE Marca = " + Marca;
        Conexao conexao = new Conexao();

        conexao.DeletarLinhaNoBanco(ComandoSQL);
    }

    public void Alterar(String Marca, string Cilindrada, string QuantidadePortas, string Cor, string Fabricante)
    {
        String ComandoSQL = "update Carro set cilindrada = '" + Cilindrada + "' , quantidadeportas= '" + QuantidadePortas + "' , fabricante= '" + Fabricante + "' where marca=" + Marca;
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
            Carro Carro = new Carro();
            Carro.Marca = linha["Marca"].ToString();
            Carro.Cilindrada = linha["Cilindrada"].ToString();
            Carro.QuantidadePortas = linha["QuantidadePortas"].ToString();
            Carro.Cor = linha["Cor"].ToString();
            Carro.Fabricante = linha["Fabricante"].ToString();

            lista.Add(Carro);
        }
        return lista;
    }

    public Carro Consultar(String Carro)
    {
        Carro Carroasereditado = new Carro();
        String SQL = "SELECT * FROM Carro WHERE Marca = " + Marca;
        Conexao conexao = new Conexao();
        DataTable dt = new DataTable();
        dt = conexao.QueryBanco(SQL);
        foreach (DataRow linha in dt.Rows)
        {
            Carroasereditado.Marca = linha["Marca"].ToString();
            Carroasereditado.Cilindrada = linha["Cilindrada"].ToString();
            Carroasereditado.QuantidadePortas = linha["QuantidadePortas"].ToString();
            Carroasereditado.Cor = linha["Cor"].ToString();
            Carroasereditado.Fabricante = linha["Fabricante"].ToString();
        }
        return Carroasereditado;
    }
}