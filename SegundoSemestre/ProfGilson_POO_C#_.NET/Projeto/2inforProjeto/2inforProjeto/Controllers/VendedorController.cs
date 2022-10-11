using _2inforProjeto.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace _2inforProjeto.Controllers
{
    public class VendedorController : Controller
    {
        // GET: Vendedor
        public ActionResult Listar()
        {
            List<Carro> Lista = new List<Carro>();
            Carro Acao = new Carro();

            Lista = Acao.Listar();


            ViewBag.ListadeVendedor = Lista;

            return View();
        }

        [HttpPost]
        public ActionResult SalvarEdicao(String idVendedor, String nome, String rg, String cpf)
        {
            Carro vendedor = new Carro();
            vendedor.Alterar(idVendedor, nome, rg, cpf);
            return RedirectToAction("Listar");
        }

        public ActionResult Editar(String idVendedor)
        {
            Carro vendedor = new Carro();

            vendedor = vendedor.Consultar(idVendedor);

            ViewBag.Vendedor = vendedor;

            return View();
        }

        public ActionResult Deletar(String idVendedor)
        {
            Carro Acao = new Carro();
            Acao.Deletar(idVendedor);
            return RedirectToAction("Listar");

        }
    }
}