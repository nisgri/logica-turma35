programa
{
	
	funcao inicio()
	{
		inteiro num[10], soma=0
		num[8]=0
		num[9]=0

		escreva("Digite valores abaixo:\n")		
		para(inteiro i=0;i<8;i++) {
			escreva("(",i+1,"/8): ")
			leia(num[i])
			se(num[i]%2==0) {
				num[8]++
			} senao {
				num[9]++
			}
			soma=soma+num[i]
		}

		escreva("\nA soma de todos os valores foi ",soma)
		escreva("\nTotal de pares: ",num[8])
		escreva("\nTotal de ímpares: ",num[9])
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 430; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */