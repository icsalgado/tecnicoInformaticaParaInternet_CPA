using System;


namespace PrimeiraAula2info22021
{
    class Program
    {
        static void Main(string[] args)
        {


            // Solicite 3 notas do aluno e se a média for maior que 7
            // diga que ele passou se não está rodado.


            // Primeira tentativa de resolução
            //  Resolucao1Exercicio();


            // Segunda tentativa de resolução
            //  ResolucaoProblema1Segundaforma(); 


            //SegundoExercicio();


            // SegundoExercicioSegundaForma();


            ///Tarefa 1 // Solicite 3 valores ao usuário e diga qual 
            ///é o menor valor e qual é o maior valor
            /// solicitar os 3 valores
            ///  verifico se o primeiro valor e maior que segundo valor e 
            ///  se o primeiro valor e maior que terceiro valor
            ///  se for verdade esse é o maior valor
           
            
            ///Tarefa 2 // Solicite 50 valores ao usuário e diga qual 
            /// é o menor valor e qual é o maior valor
            








        }




        private static void Resolucao1Exercicio()
        {
            Console.WriteLine("Favor digitar a primeira nota ?");
            float variavel1 = float.Parse(Console.ReadLine());


            Console.WriteLine("Favor digitar a segunda nota ?");
            float variavel2 = float.Parse(Console.ReadLine());


            Console.WriteLine("Favor digitar a terceira nota ?");
            float variavel3 = float.Parse(Console.ReadLine());


            float media = (variavel1 + variavel2 + variavel3) / 3;


            Console.WriteLine("A média final das suas notas foi : " + Math.Round(media, 2));
        }


        private static void  ResolucaoProblema1Segundaforma()
        {
            float somanotas = 0;


            for (int x = 0; x < 3; x++)
            {
                Console.WriteLine("Favor digitar uma nota ?");
                somanotas += float.Parse(Console.ReadLine());
            }


            Console.WriteLine("A média final das suas notas foi : " + Math.Round(somanotas / 3, 2));


        }


        private static void SegundoExercicio()
        {
            Console.WriteLine("Favor digitar a primeira nota ?");
            float variavel1 = float.Parse(Console.ReadLine());


            Console.WriteLine("Favor digitar a segunda nota ?");
            float variavel2 = float.Parse(Console.ReadLine());


            Console.WriteLine("Favor digitar a terceira nota ?");
            float variavel3 = float.Parse(Console.ReadLine());


            float media = (variavel1 + variavel2 + variavel3) / 3;


            if (media >= 7)
            {
                Console.WriteLine("Parabéns você foi aprovado : " + media);
            }
            else
            {
                Console.WriteLine("Você foi reprovado : " + media);
            }


        }


        private static float SolicitareretornarMedia3Notas()
        {
            Console.WriteLine("Favor digitar a primeira nota ?");
            float variavel1 = float.Parse(Console.ReadLine());


            Console.WriteLine("Favor digitar a segunda nota ?");
            float variavel2 = float.Parse(Console.ReadLine());


            Console.WriteLine("Favor digitar a terceira nota ?");
            float variavel3 = float.Parse(Console.ReadLine());


            return (variavel1 + variavel2 + variavel3) / 3;
           
        }


        private static void SegundoExercicioSegundaForma()
        {
            float retorno = SolicitareretornarMedia3Notas();


            if (retorno >= 7)
            {
                Console.WriteLine("Parabéns você foi aprovado : " + retorno);
            }
            else
            {
                Console.WriteLine("Você foi reprovado : " + retorno);
            }
        }


        private static void Resolucao1Exercicio13()
        {
            float retorno = SolicitareretornarMedia3Notas();
            Console.WriteLine("A média final das suas notas foi : " + Math.Round(retorno , 2));
        }




        private static void ResolucaoTerceiroExercicio()
        {
            // Faça um programa que solicte 3 notas e de uma média ponderada.
            // Sendo que a primeira nota vale 1, a segunda nota vale2 e a terceira nota vale 5


            Console.WriteLine("Favor digitar a primeira nota ?");
            float variavel1 = float.Parse(Console.ReadLine());


            Console.WriteLine("Favor digitar a segunda nota ?");
            float variavel2 = float.Parse(Console.ReadLine());


            Console.WriteLine("Favor digitar a terceira nota ?");
            float variavel3 = float.Parse(Console.ReadLine());


            float mediaPonderada = (variavel1 * 1 + variavel2 * 2 + variavel3 * 5) / 8;


            Console.WriteLine("A média final das suas notas foi : " + Math.Round(mediaPonderada, 2));
        }




        }
}