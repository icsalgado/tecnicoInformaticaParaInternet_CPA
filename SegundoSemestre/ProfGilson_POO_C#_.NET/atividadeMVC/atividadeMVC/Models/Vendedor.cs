using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace atividadeMVC.Models
{
    public class Vendedor
    {
        public Int16 ID { get; set; }
        public String Nome { get; set; }
        public String DataNascimento { get; set; }
        public String RG { get; set; }
        public String CPF { get; set; }
        public String Sexo { get; set; }
    }
}