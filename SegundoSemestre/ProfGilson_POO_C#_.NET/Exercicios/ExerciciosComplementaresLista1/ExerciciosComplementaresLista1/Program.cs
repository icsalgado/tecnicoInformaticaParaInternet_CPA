using System;

namespace ExerciciosComplementaresLista1
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("EXERCICIOS COMPLEMENTARES LISTA 1");
            //exercicio1();
            //exercicio2();
            //exercicio3();
            //exercicio4();
            exercicio5();
        }

        public static void exercicio1()
        {
            /*Escreva um programa para ler um valor (do teclado) e escrever (na tela) o seu antecessor. */
            Console.WriteLine("\nExercicio 1\nInforme um valor");
            float numero = float.Parse(Console.ReadLine());

            Console.WriteLine("O valor informado foi "+numero+" e seu antecessor é " +--numero);//usando pré decremento
        }
        public static void exercicio2()
        {
            /*Escreva um programa para ler as dimensões de um retângulo (base e altura), calcular e escrever a area*/
            Console.WriteLine("\nExercicio 2\nInforme o valor da base de um retângulo: ");
            float baseTriangulo = float.Parse(Console.ReadLine());
            Console.WriteLine("\nInforme o valor da altura deste retângulo: ");
            float alturaTriangulo = float.Parse(Console.ReadLine());
            Console.WriteLine("\nA área do retângulo descrito é: " +baseTriangulo*alturaTriangulo);
        }

        public static void exercicio3()
        {
            /*Faça um programa que leia a idade de uma pessoa expressa em anos, meses e dias e escreva a idade dessa pessoa 
             * expressa apenas em dias. Considerar ano com 365 dias e mês com 30 dias. */
            Console.WriteLine("\nExercicio 3\nInforme sua idade em anos: ");
            int anosIdade = int.Parse(Console.ReadLine());
            Console.WriteLine("\nExercicio 3\nInforme quantos meses já se passaram do seu aniversário: ");
            int mesesIdade = int.Parse(Console.ReadLine());
            Console.WriteLine("\nExercicio 3\nInforme o dia do mes atual: ");
            int diasIdade = int.Parse(Console.ReadLine());

            int idadeEmDias = (anosIdade * 365) + (mesesIdade + 30) + (diasIdade);

            Console.WriteLine("\nVocê nasceu a " + idadeEmDias + " dias");
        }
        public static void exercicio4()
        {
            /*Escreva um programa para ler o número total de eleitores de um município, o número de votos brancos, nulos e válidos. 
             * Calcular e escrever o percentual que cada um representa em relação ao total de eleitores.*/
            Console.WriteLine("\nExercicio 4\nInforme o numero total de eleitores: ");
            int eleitores = int.Parse(Console.ReadLine());
            Console.WriteLine("\nInforme o numero de votos em branco: ");
            int votosBrancos = int.Parse(Console.ReadLine());
            Console.WriteLine("\nInforme o numero de votos nulos: ");
            int votosNulos = int.Parse(Console.ReadLine());
            Console.WriteLine("\nInforme o numero de votos válidos: ");
            int votosValidos = int.Parse(Console.ReadLine());

            Console.WriteLine("\nO percentual de votos em branco é de: " + (float)(((float)votosBrancos / (float)eleitores) * 100) +"%");
            Console.WriteLine("\nO percentual de votos em nulos é de: " + (float)(((float)votosNulos / (float)eleitores) * 100) +"%");
            Console.WriteLine("\nO percentual de votos em validos é de: " + (float)(((float)votosValidos / (float)eleitores) * 100) +"%");

        }
        public static void exercicio5()
        {
            /*Escreva um programa para ler o salário mensal atual de um funcionário e o percentual de reajuste. 
             * Calcular e escrever o valor do novo salário.*/
            Console.WriteLine("\nExercicio 5\nInforme o salário atual: ");
            float salario = float.Parse(Console.ReadLine());
            Console.WriteLine("\nInforme o percentual de reajuste: ");
            float reajuste = float.Parse(Console.ReadLine());

            Console.WriteLine("\nO salário reajustado será: "+(salario+((reajuste*salario)/100)));

        }
    }
}
