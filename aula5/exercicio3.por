programa
{
	inclua biblioteca Util-->u	
	const inteiro quant=50
	
	funcao inicio()
	{
		cadeia convidados[quant] inteiro opcao, posicao
				
		faca
		{
			limpa()
			escreva(" MENU DE OPÇÕES:\n")
			escreva(" 1 - Inserir nome.\n")
			escreva(" 2 - Listar convidados.\n")
			escreva(" 3 - Remover nome.\n")
			escreva(" 4 - Pagamento.\n")
			escreva(" 0 - Sair.\n")
			escreva(" Digite a opção: ")
			leia(opcao)

			escolha(opcao)
			{
				caso 0:
				{
					limpa()
					escreva(" Saindo...")
					pare
				}
				caso 1:
				{
					limpa()
					escreva("\n Qual cadeira deseja reservar? ")
					leia(posicao)
					inserir(convidados,posicao)
					pare
				}
				caso 2:
				{
					limpa()
					listar(convidados)
					pare
				}
				caso 3:
				{
					limpa()
					escreva("\n Qual cadeira deseja liberar? ")
					leia(posicao)
					remover(convidados,posicao)
					pare
				}
				caso 4:
				{
					limpa()
					pagamento(convidados)
					pare
				}
				caso contrario:
				{
					limpa()
					escreva("\n Opção inválida.")
					u.aguarde(1000)
					pare
				}
			}
		} enquanto(opcao!=0)
	}

	funcao inserir(cadeia vetor[],inteiro posicao)
	{
		cadeia convidado
		se(vetor[posicao-1]!="")
		{
			limpa()
			escreva(" Cadeira já ocupada.")
			u.aguarde(1000)
		} senao {
			escreva(" Qual o nome do convidado? ")
			leia(convidado)
			vetor[posicao-1]=convidado
			limpa()
			escreva(" Convidado adicionado com sucesso.")
			u.aguarde(1000)
		}
	}

	funcao listar(cadeia vetor[])
	{
		inteiro cont=0
		para(inteiro i=0;i<quant;i++)
		{
			se(vetor[i]=="")
			{
				cont++
			}
		}
		se(cont==quant)
		{
			escreva("A lista de convidados está vazia.")
			u.aguarde(1000)
		} senao {
			escreva("Lista de convidados:\n")
			para(inteiro i=0;i<quant;i++)
			{
				escreva(vetor[i]," está na cadeira ",i+1)
			}
			u.aguarde(5000)
		}
	}

	funcao remover(cadeia vetor[],inteiro posicao)
	{
		se(vetor[posicao-1]=="")
		{
			limpa()
			escreva(" Convidado já removido/Não há nenhum nessa cadeira.")
			u.aguarde(1000)
		} senao {
			limpa()
			vetor[posicao-1]=""
			escreva(" Convidado removido com sucesso.")
			u.aguarde(1000)
		}
	}

	funcao pagamento(cadeia vetor[])
	{
		inteiro cont=0
		para(inteiro i=0;i<quant;i++)
		{
			se(vetor[i]!="")
			{
				cont++
			}
		}
		escreva(" Existe(m) ",cont," convidado(s) no total.\n")
		escreva(" O valor total dos ingressos é R$",cont*120.0,"\n")
		u.aguarde(5000)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1046; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */