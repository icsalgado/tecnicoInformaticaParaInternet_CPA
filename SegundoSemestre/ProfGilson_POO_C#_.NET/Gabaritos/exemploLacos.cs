using System;


namespace Aula2info_Aula2
{
    class Program
    {


        // Escrever um algoritmo que lê 5 valores para a,
        // um de cada vez, e conta quantos destes valores são negativos,
        // escrevendo esta informação.
        static void Main(string[] args)
        {
            Exemplo1();
        }


        private static void Exemplo1()
        {
            int negativos = 0;
            int positivos = 0;
            int x = 0;


            do
            {
                Console.WriteLine("Digite um valor qualquer?");
                float teste = float.Parse(Console.ReadLine());


                if (teste < 0)
                {
                    negativos++;
                }
                else
                {
                    positivos++;
                }
                x++;


            } while (x < 5);


            Console.WriteLine("Existem " + negativos + " valore negativos e " + positivos + " valores positivos");


        }




    }
}