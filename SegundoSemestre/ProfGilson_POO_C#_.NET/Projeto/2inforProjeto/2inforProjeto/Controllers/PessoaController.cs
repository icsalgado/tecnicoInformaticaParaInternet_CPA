using _2inforProjeto.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace _2inforProjeto.Controllers
{
    public class PessoaController : Controller
    {
        public ActionResult DeletarPessoa(String idAluno)
        {
            Pessoa Pessoa = new Pessoa();
            Pessoa.DeletarPessoa(idAluno);
            return RedirectToAction("Listar");
        }


        // GET: Pessoa
        public ActionResult Listar()
        {
            ////Estrutura que pode receber n pessoas
            ///
            Pessoa Pessoa = new Pessoa();
            List<Pessoa> ListaDePessoa = Pessoa.ListarPessoa();
            //{ new Pessoa() {
            //    Cpf = "1234",
            //    RG = "2142",
            //    Nome = "João da silva",
            //    Sexo = "Masculino",
            //    Salario = 1000d
            //  },
            //   new Pessoa() {
            //    Cpf = "423543",
            //    RG = "543534",
            //    Nome = "Maria Lucia",
            //    Sexo = "Feminino",
            //    Salario = 5000d
            //  },
            //  new Pessoa() {
            //    Cpf = "54363",
            //    RG = "6645645",
            //    Nome = "Salete Suzana",
            //    Sexo = "Feminino",
            //    Salario = 3000d
            //  }
            //} ;

            ////Instaciamento da classe pessoa
            //Pessoa Pessoa = new Pessoa();

            //Pessoa.Cpf = "1234";
            //Pessoa.RG = "2142";
            //Pessoa.Nome = "João da silva";
            //Pessoa.Sexo = "Masculino";
            //Pessoa.Salario = 1000d;

            //ListaDePessoa.Add(Pessoa);

            //Pessoa Pessoa2 = new Pessoa();

            //Pessoa2.Cpf = "423543";
            //Pessoa2.RG = "543534";
            //Pessoa2.Nome = "Maria Lucia";
            //Pessoa2.Sexo = "Feminino";
            //Pessoa2.Salario = 5000d;

            //ListaDePessoa.Add(Pessoa2);

            ViewBag.ListaDePessoa = ListaDePessoa;

            return View();
        }
    }
}