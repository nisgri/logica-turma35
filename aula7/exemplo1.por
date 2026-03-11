programa
{
	inteiro matriz[3][2],total= 0,linhas[3],colunas[2]
		
	funcao inicio()
	{
		para(inteiro l= 0;l< 3;l++)
		{
			
			para(inteiro c= 0;c< 2; c++)
			{				
				ler(l,c)
				somacoluna(l,c)
				somalinha(l,c)
				total+= matriz[l][c]
			}			
		}
		escrever()
	}

	funcao somacoluna(inteiro l,inteiro c)
	{
		se(c== 0)
		{
			colunas[0]+= matriz[l][c]
		} senao {
			colunas[1]+= matriz[l][c]
		}
	}

	funcao somalinha(inteiro l,inteiro c)
	{
		linhas[l]+= matriz[l][c]
	}

	funcao ler(inteiro l,inteiro c)
	{
		escreva("Digite o valor da coluna ",c+1," da ",l+1,"ª linha: ")
		leia(matriz[l][c])
	}

	funcao escrever()
	{
		escreva("\n")
		escreva("A soma total da linha 1 é ",linhas[0],".\n")
		escreva("A soma total da linha 2 é ",linhas[1],".\n")
		escreva("A soma total da linha 3 é ",linhas[2],".\n")
		escreva("A soma total da coluna 1 é ",colunas[0],".\n")
		escreva("A soma total da coluna 2 é ",colunas[1],".\n")
		escreva("A soma de tudo é .",total)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 246; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */