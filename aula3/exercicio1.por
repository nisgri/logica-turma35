programa
{
	inclua biblioteca Matematica-->m
	
	funcao inicio()
	{
		inteiro opcao,nulo=0,branco=0,ca=0,cb=0,total=0
		
		faca {
			escreva("Escolha seu candidato ou tecle 0 para encerrar.\n")
			escreva("\n	1 -> Candidato A\n")
			escreva("	2 -> Candidato B\n")
			escreva("	3 -> Branco\n")
			escreva("\nQualquer número difente de 0, 1, 2 e 3 anulará seu voto.\n")
			escreva("Digite seu voto: ")
			leia(opcao)

			escolha(opcao) {
				caso 1:
					ca++
					total++
					pare
				caso 2:
					cb++
					total++
					pare
				caso 3:
					branco++
					total++
					pare
				caso 0:
					real cap100=(ca*100.0)/total
					real cbp100=(cb*100.0)/total
					real np100=(nulo*100.0)/total
					real bp100=(branco*100.0)/total
					escreva("\nVotação encerrada!\n")
					escreva("\nTotal de votos: ",total,"\n")
					escreva("\nCandidato A:	",ca," voto(s). ",m.arredondar(cap100,1),"% do total.")
					escreva("\nCandidato B:	",cb," voto(s). ",m.arredondar(cbp100,1),"% do total.")
					escreva("\nBrancos:   	",branco," voto(s). ",m.arredondar(bp100,1),"% do total.")
					escreva("\nNulos:     	",nulo," voto(s). ",m.arredondar(np100,1),"% do total.")
					pare
				caso contrario:
					nulo++
					total++
					pare
			}
			
			escreva("\n")
		} enquanto(opcao!=0)
	}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 904; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */