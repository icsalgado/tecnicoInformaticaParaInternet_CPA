using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using atividadeMVC.Models;

namespace atividadeMVC.Controllers
{
    public class FabricanteController : Controller
    {
        // GET: Fabricante
        public ActionResult Fabricante()
        {
            List<Fabricante> ListaFabricante = new List<Fabricante>()
            {
                new Fabricante ()
                {
                    ID = 0001,
                    Nome = "Marca1",
                    Endereco = "Rua 1. 001 Cidade, UF",
                    Responsavel = "João Santos",
                    Telefone = "3333-3333"
                },
                new Fabricante ()
                {
                    ID = 0001,
                    Nome = "Marca2",
                    Endereco = "Rua 2. 002 Cidade, UF",
                    Responsavel = "Fulano Santos",
                    Telefone = "4444-4444"
                },
                new Fabricante ()
                {
                    ID = 0003,
                    Nome = "Marca3",
                    Endereco = "Rua 3. 003 Cidade, UF",
                    Responsavel = "Joana Santos",
                    Telefone = "5555-5555"
                },
            };

            ViewBag.ListaFabricante = ListaFabricante;

            return View();
        }
    }
}