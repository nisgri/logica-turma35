programa
{
	inclua biblioteca Util-->u
	
	funcao inicio()
	{
		real alturas[5],maior=0.0,menor=0.0
		cadeia nomes[5]
		
		escreva("Informe o seu nome e altura abaixo:\n")
		u.aguarde(1000)
		limpa()
		
		para(inteiro i=0;i<5;i++) {
			escreva("Nome: ")
			leia(nomes[i])
			escreva("Altura: ")
			leia(alturas[i])
			enquanto(alturas[i]<0.0 ou alturas[i]>3.0) {
				escreva("\nAltura inválida. Informe um valor entre 0 a 3 metros: ")
				leia(alturas[i])
			}
			limpa()
			se(i==0) {
				maior=alturas[i]
				menor=alturas[i]
			}
			se(alturas[i]>maior) {
				maior=alturas[i]
			}
			se(alturas[i]<menor) {
				menor=alturas[i]
			}
		}

		para(inteiro i=0;i<5;i++) {
			escreva(nomes[i]," tem ",alturas[i],"m de altura\n")
		}
		escreva("\nA maior altura foi: ",maior,"m e a menor, ",menor,"m.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 812; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */