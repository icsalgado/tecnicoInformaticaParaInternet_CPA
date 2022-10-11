using System;

namespace primeiraAulaCsharp
{
    class Program
    {
        static void Main(string[] args)
        {            
            Console.WriteLine("Hello World!");
            Console.WriteLine("Digite seu nome");
            String nome = Console.ReadLine();
            Console.WriteLine("Digite sua idade");
            float idade = float.Parse(Console.ReadLine());

            Console.WriteLine(nome + idade);
        }
    }
}
