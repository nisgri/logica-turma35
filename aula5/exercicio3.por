programa
{
	inclua biblioteca Util -->u	
	const inteiro quant =50
	cadeia convidados[quant] inteiro opcao, posicao
	
	funcao inicio()
	{						
		menu()
	}

	funcao menu()
	{
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
					inserir()
					pare
				}
				caso 2:
				{
					listar()
					pare
				}
				caso 3:
				{
					remover()
					pare
				}
				caso 4:
				{
					pagamento()
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
		} enquanto(opcao !=0)
	}

	funcao inserir()
	{
		limpa()
		escreva(" Qual cadeira deseja reservar? (1-",quant,"): ")
		leia(posicao)
		enquanto(posicao <1 ou posicao >quant)
		{
			escreva("Digite um valor válido (1-",quant,"): ")
			leia(posicao)
		}
		cadeia convidado
		se(convidados[posicao -1] !="")
		{
			limpa()
			escreva(" Cadeira já ocupada.")
			u.aguarde(1000)
		} senao {
			escreva(" Qual o nome do convidado? ")
			leia(convidado)
			convidados[posicao -1] =convidado
			limpa()
			escreva(" Convidado adicionado com sucesso.")
			u.aguarde(1000)
		}
	}

	funcao listar()
	{
		limpa()
		inteiro cont =0
		para(inteiro i =0;i <quant;i++)
		{
			se(convidados[i] =="")
			{
				cont++
			}
		}
		se(cont ==quant)
		{
			escreva("A lista de convidados está vazia.")
			u.aguarde(1000)
		} senao {
			escreva("Lista de convidados:\n\n")
			para(inteiro i =0;i <quant;i++)
			{
				se(convidados[i] !="")
				{
					escreva(convidados[i]," está na cadeira ",i +1,"\n")
				}
			}
			u.aguarde(5000)
		}
	}

	funcao remover()
	{
		limpa()
		escreva(" Qual cadeira deseja liberar? (1-",quant,"): ")
		leia(posicao)
		enquanto(posicao <1 ou posicao >quant)
		{
			escreva("Digite um valor válido (1-",quant,"): ")
			leia(posicao)
		}
		se(convidados[posicao -1] =="")
		{
			limpa()
			escreva(" Convidado já removido/Não há nenhum nessa cadeira.")
			u.aguarde(1000)
		} senao {
			limpa()
			convidados[posicao -1] =""
			escreva(" Convidado removido com sucesso.")
			u.aguarde(1000)
		}
	}

	funcao pagamento()
	{
		limpa()
		inteiro cont =0
		para(inteiro i =0;i <quant;i++)
		{
			se(convidados[i] !="")
			{
				cont++
			}
		}
		escreva(" Existe(m) ",cont," convidado(s) no total.\n")
		escreva(" O valor total dos ingressos é R$",cont *120.0,"\n")
		u.aguarde(5000)
	}
}
