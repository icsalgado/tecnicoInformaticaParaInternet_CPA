using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace atividadeMVC.Models
{
    public class Fabricante
    {
        public Int16 ID { get; set; }
        public String Nome { get; set; }
        public String Endereco { get; set; }
        public String Responsavel { get; set; }
        public String Telefone { get; set; }
    }
}