using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using atividadeMVC.Models;

namespace atividadeMVC.Controllers
{
    public class VendedorController : Controller
    {
        // GET: Vendedor
        public ActionResult Listar()
        {
            List<Vendedor> ListaVendedor = new List<Vendedor>()
            {
                new Vendedor ()
                {
                    ID = 0001,
                    Nome = "João da Silva",
                    DataNascimento = "01/01/2001",
                    RG = "0000000000",
                    CPF = "00000000000",
                    Sexo = "Masculino"
                },
                new Vendedor ()
                {
                    ID = 0001,
                    Nome = "Fulano da Silva",
                    DataNascimento = "02/02/2002",
                    RG = "0000000001",
                    CPF = "00000000001",
                    Sexo = "Masculino"
                },
                new Vendedor ()
                {
                    ID = 0003,
                    Nome = "Joana da Silva",
                    DataNascimento = "03/03/2003",
                    RG = "0000000002",
                    CPF = "00000000002",
                    Sexo = "Feminino"
                }
            };

            ViewBag.ListaVendedor = ListaVendedor;


            return View();
        }
    }
}