using System;

namespace ExerciciosComplementaresLista2
{
    class Program
    {
        static void Main(string[] args)
        {
            //exercicio1();
            //exercicio2();
            exercicio3();
        }
        public static void exercicio3()
        {
            /*
             3. A prefeitura de uma cidade fez uma pesquisa entre seus habitantes, coletando dados 
            sobre o salário e número de filhos. A prefeitura deseja saber:
            a) média do salário da população;
            b) média do número de filhos;
            c) maior salário;
            d) percentual de pessoas com salário até R$100,00.
            O final da leitura de dados se dará com a entrada de um salário negativo.
             */
            float salario;
            float mediaSalario;
            int filho;
            float mediaFilho;
            int salarioMaiorCem;
            int totalPessoas = 0;
            float maiorSalario = 0;

            do
            {
                Console.WriteLine("Digite o salario: ");
                salario = float.Parse(Console.ReadLine());
                Console.WriteLine("Digite a quantidade de filhos: ");
                filho = int.Parse(Console.ReadLine());

                totalPessoas++;//incrementa total de pessoas

                if(salario > maiorSalario)
                {
                    maiorSalario = salario;
                }//atualiza maior salario

                mediaSalario = (mediaSalario + salario) / totalPessoas;//atualiza a media de salario
                mediaFilho = (mediaFilho+)


            } while (salario >= 0);
            
        }
        public static void exercicio2()
        {
            /*2. Escrever um algoritmo que lê um valor N inteiro e 
             * positivo e que calcula e escreve o valor de E.
                E = 1 + 1 / 1! + 1 / 2! + 1 / 3! + 1 / N!
            */
            Console.WriteLine("Informe um valor para N");
            int N = int.Parse(Console.ReadLine());
            int fatN;
            int E;
            //fatorial
            for(fatN = 1; N > 1; N--)
            {
                fatN = fatN * N; 
            }
            E = 1 + 1 / 1 + 1 / (2*1) + 1 / (3*2*1) + 1 / fatN;
            Console.WriteLine("Valor de E = "+E);
        }
        public static void exercicio1()
        {
            /*1. Escrever um algoritmo que lê 5 valores para a, 
             * um de cada vez, e conta quantos destes valores são negativos, escrevendo esta informação.*/
            int[] a = new int[5];
            int negativos = 0;
            for (int i = 0; i < 5; i++)
            {
                Console.WriteLine("digite um valor para a["+i+"]");
                a[i] = int.Parse(Console.ReadLine());
                if (a[i] < 0)
                {
                    negativos++;
                }
            }
            if (negativos == 0)
            {
                Console.WriteLine("não existem numeros negativos");
            }else if(negativos > 1)
            {
                Console.WriteLine("Exitem " + negativos + " numeros negativos");
            }
            else
            {
                Console.WriteLine("Existe " + negativos + " numero negativo");
            }
            
        }
        
    }
}
