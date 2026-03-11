programa
{
   funcao inicio()
   {
      inteiro numeros[4][2] = { {10,20},
      					  {30,40},
      					  {12,21},
      					  {13,25}}

      inteiro numero
      logico encontrado = falso

      faca
      {
         escreva("\nDigite um número a ser pesquisado na matriz: ")
         leia(numero)
         limpa()

         para(inteiro linha = 0; linha < 4; linha ++)
         {
            para(inteiro coluna = 0; coluna < 2; coluna ++)
            {
               se(numeros[linha][coluna] == numero)
               {
                  escreva("Número encontrado: ", "Linha ", linha + 1, ", Coluna ", coluna + 1, "\n")
                  encontrado = verdadeiro
                  pare			
               }
            }
         }
      se(numero != 0)
      {
         se(encontrado == falso)
         {
            escreva("\nNúmero não encontrado.\n")		   					
         }
      }
      encontrado = falso
      }
      enquanto(numero != 0)
      escreva("\nFIM DO PROGRAMA.\n")	  		
   }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1006; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */