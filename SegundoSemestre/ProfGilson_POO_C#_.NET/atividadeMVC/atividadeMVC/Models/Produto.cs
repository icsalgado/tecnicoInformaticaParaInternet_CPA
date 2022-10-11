using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace atividadeMVC.Models
{
    public class Produto
    {
        public Int16 ID { get; set; }
        public String Nome { get; set; }
        public String Tipo { get; set; }
        public Double Valor { get; set; }
        public Int16 Estoque { get; set; }
    }
}