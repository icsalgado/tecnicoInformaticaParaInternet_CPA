using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using atividadeMVC.Models;

namespace atividadeMVC.Controllers
{
    public class ProdutoController : Controller
    {
        // GET: Produto
        public ActionResult Produto()
        {
            List<Produto> ListaProduto = new List<Produto>()
            {
                new Produto ()
                {
                    ID = 001,
                    Nome = "Produto 1",
                    Tipo = "Tipo 1",
                    Valor = 10.10,
                    Estoque = 10
                },
                new Produto ()
                {
                    ID = 002,
                    Nome = "Produto 2",
                    Tipo = "Tipo 2",
                    Valor = 20.20,
                    Estoque = 20
                },
                new Produto ()
                {
                    ID = 003,
                    Nome = "Produto 3",
                    Tipo = "Tipo 3",
                    Valor = 30.30,
                    Estoque = 30
                }
            };

            ViewBag.ListaProduto = ListaProduto;
            return View();
        }
    }
}