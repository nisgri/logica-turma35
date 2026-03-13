//CÓDIGO REFERENTE AO GRUPO 5 DA TURMA 35

programa
{
	inclua biblioteca Util--> u
	inteiro hotel[8][15],andar= 0,quarto= 0,ocupados= 0
	
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
		logico validador= falso
		escreva("*Digite um valor negativo abaixo para parar o programa*\n")
		escreva("Em qual andar pretende reservar um quarto? (1-8): ")
		leia(andar)
		se(andar< 0)
		{
			limpa()
			escreva("Número negativo digitado. Saindo...")
      		u.aguarde(1000)
		} senao {		
			validador= andarizacao(andar- 1)
			se(validador!= verdadeiro)
			{
				validador= verificacao(8,'a')
			}
			andar--
			
			se(andar< 0)
			{
				limpa()
				escreva("Número negativo digitado. Saindo...")
	      		u.aguarde(1000)
			} senao {
				limpa()
				escreva("E qual o quarto? ")
				leia(quarto)
				validador= quartizacao(andar,quarto- 1)
				se(validador!= verdadeiro)
				{
					validador= verificacao(15,'q')
				}
				quarto--
				
				hotel[andar][quarto]= 1
				ocupados++
				limpa()
				escreva("Reserva realizada com sucesso.\n")
				u.aguarde(1000)
			}
		}
	}

	funcao logico verificacao(inteiro x, caracter c)
	{
		logico validador= falso
		
		se(c== 'a')
		{
			enquanto(validador!= verdadeiro ou (andar== 0 ou andar> x))
			{
					limpa()
					vazios(0,'a')
					escreva("*Digite um valor negativo abaixo para parar o programa*\n")
					escreva("Erro! Andar '",andar,"' lotado (ou inválido). Digite outro: ")
					leia(andar)
					se(andar< 0)
					{
						validador= verdadeiro
					} senao se (andar>= 1 e andar<= x){
						validador= andarizacao(andar- 1)
					} senao {
						validador= falso
					}
			}
		} senao {
			enquanto(validador!= verdadeiro ou (quarto< 1 ou quarto> x))
			{
					limpa()
					vazios(andar,'q')
					escreva("Erro! Quarto '",quarto,"' ocupado (ou inválido). Digite outro: ")
					leia(quarto)
					se(quarto>= 1 e quarto<= 15)
					{
						validador= quartizacao(andar,quarto- 1)
					} senao {
						validador= falso
					}
			}
		}
		
		retorne verdadeiro
	}

	funcao logico andarizacao(inteiro a)
	{				
		se(a< 0 ou a> 7)
		{
			retorne falso
		} senao {
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
				retorne falso
			} senao {
				retorne verdadeiro
			}
		}
	}

	funcao logico quartizacao(inteiro a,inteiro q)
	{
		se(q< 0 ou q> 14)
		{
			retorne falso
		} senao {
			se(hotel[a][q]== 1)
			{
				retorne falso
			} senao {
				retorne verdadeiro
			}
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
		inteiro cont= 0
    
    		se(opcao== 'a')
		{
			escreva("Andares vagos: \n")
			
			para(inteiro a= 0;a< 8;a++)
			{
				para(inteiro q= 0;q< 15;q++)
        			{
          			se(hotel[a][q]== 0)
				  	{
					  cont++
				  	}
        			}
        		
        			se(cont> 0)
        			{
          			escreva(a+1," ")
        			}

        			cont= 0        			
			}

			escreva("\n\n")		
		} senao {
			escreva("Quartos vagos: \n")
			
			para(inteiro q= 0;q< 15;q++)
			{
				se(hotel[x][q]== 0)
				{
					escreva(q+1," ")
				}
			}
			
			escreva("\n\n")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3771; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */