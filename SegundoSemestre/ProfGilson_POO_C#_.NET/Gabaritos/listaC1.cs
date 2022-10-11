using System;


namespace _2Info1Aula2
{
    class Program
    {
        static void Main(string[] args)
        {
            //Exercicio1();


            //Exercicio2();


            //Exercicio3();


            //Exercicio4();


            Exercicio5();
        }


        private static void Exercicio1()
        {
            Console.WriteLine("Favor digite um valor ?");
            int variavel1 = int.Parse(Console.ReadLine());


            //Primeira forma
            // variavel1 = variavel1 - 1;


            //Segunda forma
            variavel1--;


            Console.WriteLine("O antecessor do número digitado é " + variavel1);


        }


        private static void Exercicio2()
        {
            Console.WriteLine("Digite o valor da base ?");
            int baseRet = int.Parse(Console.ReadLine());


            Console.WriteLine("Digite o valor da altura ?");
            int altRet = int.Parse(Console.ReadLine());


            int areaRet = baseRet * altRet;


            Console.WriteLine("A área do retangulo é : " + areaRet);


        }


        private static void Exercicio3()
        {
            Console.WriteLine("Digite a sua idade em anos?");
            int idadeanos = int.Parse(Console.ReadLine());


            Console.WriteLine("Digite a sua idade em meses?");
            int idademeses = int.Parse(Console.ReadLine());


            Console.WriteLine("Digite a sua idade em dias?");
            int idadedias = int.Parse(Console.ReadLine());


            int resultadodias = (idadeanos * 365) + (idademeses * 30) + idadedias;


            Console.WriteLine("A sua idade em dias é: " + resultadodias);


        }


        private static void Exercicio4()
        {
            Console.WriteLine("Digite o número de eleitores?");
            int eleitores = int.Parse(Console.ReadLine());


            Console.WriteLine("Digite a quantidade de votos brancos?");
            int brancos = int.Parse(Console.ReadLine());
            
            Console.WriteLine("Digite a quantidade de votos nulos?");
            int nulos = int.Parse(Console.ReadLine());


            Console.WriteLine("Digite a quantidade de votos validos?");
            int validos = int.Parse(Console.ReadLine());


            float percentualbrancos = (float) (((float)brancos /(float) eleitores) * 100);
            float percentualnulos = (float)(((float)nulos /(float) eleitores) * 100);
            float percentualvalidos = (float) (((float)validos /(float) eleitores) * 100);


            Console.WriteLine("O percentual de votos brancos é : " + percentualbrancos);


            Console.WriteLine("O percentual de votos nulos é : " + percentualnulos);


            Console.WriteLine("O percentual de votos validos é : " + percentualvalidos);






        }


        private static void Exercicio5()
        {
            Console.WriteLine("Digite o valor do salario?");
            float salario = float.Parse(Console.ReadLine());


            Console.WriteLine("Digite o percentual de aumento?");
            float percentual = float.Parse(Console.ReadLine());


            float NovoSalario = ((salario * percentual) / 100) + salario;


            Console.WriteLine("O Novo Salario é : " + NovoSalario);


        }




        }
}