using _2inforProjeto.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace _2inforProjeto.Controllers
{
    public class CarroController : Controller
    {
        public ActionResult Listar()
        {
            List<Carro> ListadeCarro = new List<Carro>();

            Carro Acao = new Carro();

            ListadeCarro = Acao.Listar();


            ViewBag.ListadeCarro = ListadeCarro;


            return View();
        }

        [HttpPost]
        public ActionResult SalvarEdicao(String Marca, String Cilindrada, String QuantidadePortas, String Cor, String Fabricante)
        {
            Carro carro = new Carro();
            carro.Alterar(Marca, Cilindrada, QuantidadePortas, Cor, Fabricante);
            return RedirectToAction("Listar");
        }

        public ActionResult Editar(String Marca)
        {
            Carro carro = new Carro();

            Carro = Carro.Consultar(Marca);

            ViewBag.Carro = carro;

            return View();
        }

        public ActionResult Deletar(String Marca)
        {
            Carro Acao = new Carro();
            Acao.Deletar(Marca);
            return RedirectToAction("Listar");

        }
    }
}