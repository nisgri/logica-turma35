programa
{
	inclua biblioteca Util--> u
	inteiro hotel[8][16],andar= 0,quarto= 0,ocupados= 0
	
	funcao inicio()
	{
		preencher()
		
		faca
		{
			reservar()	
		}
		enquanto(andar>= 0)

		finalizacao()
	}

	funcao preencher()
	{
		para(inteiro a= 0;a< 8;a++)
		{
			para(inteiro q= 0;q< 15;q++)
			{
				hotel[a][q]= 0
			}
		}
	}

	funcao reservar()
	{		
		limpa()
		listar()
		inteiro validador= 0
		escreva("*Digite um valor negativo abaixo para parar o programa*\n")
		escreva("Em qual andar pretende reservar um quarto? (1-8) ")
		leia(andar)
		
		se(andar< 0)
		{
			limpa()
			escreva("Saindo...")
		} senao {		
			se(andar< 1 ou andar> 8)
			{
				enquanto(andar< 1 ou andar> 8)
				{
					limpa()
					escreva("Erro! Andar inválido. Informe outro no intervalo 1-8: ")
					u.aguarde(1000)
					leia(andar)
				}
			}
			
			andar--
			validador= andarizador(andar)
				
			se(validador!= -1)
			{
				enquanto(andar== validador ou (andar< 0 ou andar> 7))
				{
						limpa()
						vazios(0,'a')
						escreva("Erro! Andar ",validador+ 1," lotado (ou inválido). Informe outro: ")
						leia(andar)
						andar--
				}
			}
				
			limpa()
			escreva("E qual o quarto? ")
			leia(quarto)
			
			se(quarto< 1 ou quarto> 15)
			{
				enquanto(quarto< 1 ou quarto> 15)
				{
					limpa()
					escreva("Erro! Quarto inválido. Informe outro no intervalo 1-15: ")
					u.aguarde(1000)
					leia(quarto)
				}
			}
			
			quarto--
			validador= quartizador(andar,quarto)
				
			se(validador!= -1)
			{
				enquanto(quarto== validador ou (quarto< 0 ou quarto> 14))
				{
						limpa()
						vazios(andar,'q')
						escreva("Erro! Quarto ",validador+ 1," ocupado (ou inválido). Informe outro: ")
						leia(quarto)
						quarto--
				}
			}
				
			hotel[andar][quarto]= 1
			ocupados++
			limpa()
			escreva("Reserva realizada com sucesso.\n")
			u.aguarde(1000)
		}
	}

	funcao inteiro andarizador(inteiro a)
	{				
		inteiro cont= 0
		
		para(inteiro q= 0;q< 15;q++)
		{
			se(hotel[a][q]== 1)
			{
				cont++
			}
		}

		se(cont== 15)
		{
			hotel[a][15]= 1
			retorne a
		} senao {
			retorne -1
		}
	}

	funcao inteiro quartizador(inteiro a,inteiro q)
	{
		se(hotel[a][q]== 1)
		{
			retorne q
		} senao {
			retorne -1
		}
	}

	funcao listar()
	{		
		escreva("Lista de quartos e andares:\n")
		
		para(inteiro a= 7;a>= 0;a--)
		{
			escreva((a+ 1),"° andar - ")
			para(inteiro q= 0;q< 15; q++)
			{
				escreva(hotel[a][q]," ")
			}
			escreva("\n")
		}

		escreva("\n")
	}

	funcao finalizacao()
	{
		limpa()
		listar()
		escreva("Total de quartos ocupados: ",ocupados,"\n")
		escreva("Total de quartos livres: ",(120- ocupados),"\n")
	}

	funcao vazios(inteiro x,caracter opcao)
	{
		se(opcao== 'a')
		{
			escreva("Andares vagos: \n")
			para(inteiro a= 0;a< 8;a++)
			{
				se(hotel[a][15]== 0)
				{
					escreva(a+1," ")
				}
			}
			escreva("\n")
		} senao {
			escreva("Quartos vagos: \n")
			para(inteiro q= 0;q< 15;q++)
			{
				se(hotel[x][q]== 0)
				{
					escreva(q+1," ")
				}
			}
			escreva("\n")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2882; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */