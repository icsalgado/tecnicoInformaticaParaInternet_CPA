using System;

namespace atv1CondicionalIf_iuriSalgado
{
    class Program
    {
        static void Main(string[] args)
        {
            /*
             Programa vai validar entrada de idade
             Em seguida vai determinar se o usuario é:
                Idoso 60 - 100
                Adulto 20 - 59
                Adolescente 15 - 19
                Criança 0 - 14
             */
            //entrada de dados
            Console.WriteLine("Informe seu nome");
            String nome = Console.ReadLine();
            Console.WriteLine(nome + " qual sua idade");
            int idade = int.Parse(Console.ReadLine());

            if(idade < 0)
            {
                Console.WriteLine(nome +" a idade "+idade+" é inválida, reinicie o programa");
            } else if(idade > 100)
            {
                Console.WriteLine(nome + " você tem mesmo toda essa idade? de qualquer forma sua categoria é idoso");
            } else if(idade > 59)
            {
                Console.WriteLine(nome + " sua categoria é de idoso");
            } else if(idade > 19)
            {
                Console.WriteLine(nome + " sua categoria é adulto");
            } else if(idade > 14)
            {
                Console.WriteLine(nome + " sua categoria é adolescente");
            }
            else
            {
                Console.WriteLine(nome + " você é uma criança");
            }

        }
    }
}
