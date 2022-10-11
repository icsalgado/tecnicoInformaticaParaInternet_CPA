using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace _2inforProjeto.Models
{
    
    //Descritivo de dados ou representação de uma pessoa
    public class Pessoa
    {
        //Propriedades 
        public String Nome { get; set; }

        public Double Salario { get; set; }

        public String Sexo { get; set; }

        public String Cpf { get; set; }

        public String RG { get; set; }

        public string idAluno { get; set; }


        public void DeletarPessoa(String idAluno)
        {
            String ComandoSQL = "DELETE FROM TbAluno WHERE idAluno = " + idAluno;
            Conexao conexao = new Conexao();

            conexao.DeletarLinhaNoBanco(ComandoSQL);
        }

        //Metodo Listar Pessoa
        public List<Pessoa> ListarPessoa()
        {
            List<Pessoa> ListaPessoa = new List<Pessoa>();
            String ComandoSQL = "SELECT * FROM TbAluno";
            Conexao conexao = new Conexao();
            DataTable dt = new DataTable();

            dt = conexao.QueryBanco(ComandoSQL);

            foreach (DataRow linha in dt.Rows)
            {
                Pessoa pessoa = new Pessoa();

                pessoa.Cpf = linha["cpf"].ToString();
                pessoa.Nome = linha["Nome"].ToString();
                pessoa.RG = linha["rg"].ToString();
                pessoa.Salario = Convert.ToDouble(linha["salario"]);
                pessoa.Sexo = linha["Sexo"].ToString();
                pessoa.idAluno = linha["idAluno"].ToString();

                ListaPessoa.Add(pessoa);
            }

            return ListaPessoa;
        }

    }
}