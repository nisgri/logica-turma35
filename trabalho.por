programa
{
	inclua biblioteca Util--> u
	inclua biblioteca Tipos--> t
	const inteiro n= 30
	const inteiro n3= 33
	
	inteiro totmatriculas= 0,totaulas= 0,dias[n][n3],alunosatendidos= 0
	/*dias recebe [n] como quantidade total e [n+3/n3] para: n para simbolizar a quantidade de alunos, ou seja,
	em cada dia [n], haverá mais 'n' espaços para armazenar informações dos alunos, no caso, se já fizeram 3 reservas
	de aulas em determinado dia específico (pra impedir que consiga reservar mais que 3) e o '+3' simboliza espaços
	adicionais para: armazenar quantas aulas Funcionais e de Personal foram agendadas naquele dia específico e um
	último espaço para armazenar a quantidade de alunos que agendaram aulas naquele dia específico.*/
	cadeia alunos[n][4],armarios[n][2]
	//alunos recebe [n] como quantidade total e [4] como espaços para armazenar nome,telefone,tipo de aula e matrícula.
	//armários recebe [n] como quant. total e [2] como espaços para armazenar nome e matrícula de quem reservou X armário.
	real arrecadacao= 0.0,fataulas= 0.0,fatmatriculas= 0.0
	
	funcao inicio()
	{
		inicializar()
		menu()
	}

	funcao menu()
	{
		inteiro opcao= 0
		
		faca
		{
			limpa()
			escreva("ACADEMIA - FORÇA TOTAL\n")
		     escreva("----------------------\n") 
		     escreva("1 - Nova Matrícula\n")
		     escreva("2 - Aula Personal\n")
		     escreva("3 - Listar Armários\n")
		     escreva("4 - Faturamento\n")
		     escreva("5 - Sair do Programa\n\n")
		     escreva("Escolha uma opção: ")
		     leia(opcao)
		
		     escolha(opcao)
		     {
		     	caso 1:
		          {
		          	matricula()
		          	pare
		          }	                      
				caso 2:
				{
					aulaPersonal()
		               pare
				}
		          caso 3:
		          {
		          	limpa()
		          	listar_armarios()
		          	u.aguarde(3000)
		          	pare
		          }
		          caso 4:
		          {
		          	limpa()
					faturamento()
					u.aguarde(6000)
		          	pare
		          }
		          caso 5:
		          {
		          	limpa()
		          	escreva ("Encerrando sistema. Volte sempre!\n")
		          	pare
		          }
		          caso contrario:
		          {
		          	limpa()
		          	escreva ("ERRO: Opção inválida! Digite um número entre 1-5.\n")
		          	u.aguarde(3000)               
		          }      
			}
		}enquanto(opcao!= 5)
	}

	funcao inicializar()
	{
		para(inteiro i = 0; i < n; i++)
		{
			para(inteiro j = 0; j < 4; j++)
			{
				alunos[i][j]= ""
			}
			
			para(inteiro j = 0; j < 2; j++)
			{
				armarios[i][j]= ""
			}
			
			para(inteiro j = 0; j < n3; j++)
			{
				dias[i][j]= 0
			}
		}
	}

	funcao matricula()
	{
		logico vaga= verificar_vagas()
		se(vaga== falso)
		{
			limpa()
			escreva("Saindo...")
			u.aguarde(1000)					
		} senao {
			cadeia aula
			caracter opcao
			inteiro i= verificar_indice()

			limpa()
			escreva("Qual o nome seu nome? ")
			leia(alunos[i][0])

			limpa()
			escreva("Telefone para contato? ")
			leia(alunos[i][1])

			limpa()
			escreva("Qual tipo de aula pretende? (Personal/Funcional)\n: ")
			leia(aula)

			se(aula== "Personal" ou aula== "Funcional")
			{
				alunos[i][2]= aula
			} senao {
				enquanto(aula!= "Personal" e aula!= "Funcional")
				{
					limpa()
					escreva("Inválido. Digite uma aula válida (Personal/Funcional)\n: ")
					leia(aula)
				}
				alunos[i][2]= aula
			}
			alunos[i][3]= "013"+ t.inteiro_para_cadeia(i+ 1,10)

			totmatriculas++
			fatmatriculas+= 200.0

			limpa()
			escreva("Deseja reservar um armário? (S/N): ")
			leia(opcao)
			se(opcao== 'S' ou opcao== 's')
			{
				limpa()
				escreva("Matrícula realizada com sucesso. Seu código: ",alunos[i][3])
				u.aguarde(3000)
				reservar_armario(i)
			} senao se(opcao== 'N' ou opcao== 'n') {
				limpa()
				escreva("Matrícula realizada com sucesso. Seu código: ",alunos[i][3])
				u.aguarde(3000)
			} senao {
				enquanto(opcao!= 'S' e opcao!= 'N' e opcao!= 's' e opcao!= 'n')
				{
					limpa()
					escreva("Inválido. Digite uma opção válida (S/N): ")
					leia(opcao)
				}
				se(opcao== 'S' ou opcao== 's')
				{
					reservar_armario(i)
				} senao {
					limpa()
					escreva("Matrícula realizada com sucesso. Seu código: ",alunos[i][3])
					u.aguarde(3000)
				}
			}
		}
	}

	funcao logico verificar_vagas()
	{
		inteiro cont= 0
		
		para(inteiro a= 0;a< n;a++)
		{
			se(alunos[a][0]!= "")
			{
				cont++
			}
		}
		se(cont== n)
		{
			limpa()
			escreva("Nenhuma vaga disponível. Finalizando programa...")
			u.aguarde(3000)
			retorne falso
		} senao {
			limpa()
			escreva("Vagas disponíveis: ",n- cont)
			u.aguarde(3000)
			retorne verdadeiro
		}
	}

	funcao inteiro verificar_indice()
	{
		para(inteiro i= 0;i< n;i++)
		{
			se(alunos[i][0]== "")
			{
				retorne i
			}
		}

		retorne -1
	}

	funcao reservar_armario(inteiro aluno)
	{
		inteiro armario
		logico valido
		
		limpa()
		listar_armarios()
		escreva("Qual armário deseja reservar? (1-30): ")
		leia(armario)
		valido= verificar_armario(armario)
		
		se(valido== verdadeiro)
		{
			armarios[armario- 1][0]= alunos[aluno][3]
			armarios[armario- 1][1]= alunos[aluno][0]

			limpa()
			escreva("Armário reservado com sucesso!")
			u.aguarde(3000)			
		} senao {
			enquanto(valido== falso)
			{
				limpa()
				listar_armarios()
				escreva("Armário ",armario," ocupado ou inválido.\n")
				escreva("Por favor, informe um valor válido (1-30) e livre: ")
				leia(armario)
				valido= verificar_armario(armario)
			}

			armarios[armario- 1][0]= alunos[aluno][3]
			armarios[armario- 1][1]= alunos[aluno][0]

			limpa()
			escreva("Armário reservado com sucesso!")
			u.aguarde(3000)
		}
	}

	funcao listar_armarios()
	{
		cadeia ocupados= "", livres= ""
		inteiro quantocupados= 0,quantlivres= 0
		
		para(inteiro i= 0;i< n;i++)
		{
			se(armarios[i][0]== "")
			{
				livres+= t.inteiro_para_cadeia(i+ 1, 10)
				livres+= " "
				quantlivres++
			} senao {
				ocupados+= t.inteiro_para_cadeia(i+ 1, 10)
				ocupados+= " "
				quantocupados++
			}
		}
		
		se(ocupados!= "")
		{
			escreva("Armários livres (",quantlivres,"): ",livres,"\n")
			escreva("Armários ocupados (",quantocupados,"): ",ocupados,"\n")
		} senao {
			escreva("Armários livres (",quantlivres,"): ",livres,"\n")
			escreva("Nenhum armário ocupado.\n")	
		}
		escreva("\n")
	}

	funcao logico verificar_armario(inteiro a)
	{
		se(a< 1 ou a> n)
		{
			retorne falso
		} senao {
			se(armarios[a- 1][0]== "")
			{
				retorne verdadeiro
			} senao {
				retorne falso
			}
		}
	}

	funcao aulaPersonal()
	{
		inteiro tipo,diaaula,escolhidos[2],cont= 0,mat= 0
		real valor= 0.0
		cadeia codigo
		escolhidos[0]= 0
		escolhidos[1]= 0

		limpa()
		escreva("*Você tem direito a marcar até 3 aulas por dia.*")
		u.aguarde(3000)
		
		limpa()
		escreva("Qual a sua matrícula? ")
		leia(codigo)

		logico verificador= verificar_matricula(codigo)
		
		enquanto(verificador== falso)
		{
			limpa()
			escreva("Matrícula inválida! \nDigite uma matrícula válida: ")
			leia(codigo)
			verificador= verificar_matricula(codigo)
		}
		
		limpa()
		escreva("Em qual dia deseja realizar a aula? (1-30): ")
		leia(diaaula)
		
		enquanto(diaaula < 1 ou diaaula > n)
		{
				limpa()
				escreva("Dia inválido! \nDigite um dia válido (1-30): ")
				leia(diaaula)
		}
		diaaula--
		
		mat= t.cadeia_para_inteiro(codigo,10)
		mat-= 0131
		verificador= calote(mat,diaaula)

		se(verificador== verdadeiro)
		{
			limpa()
			escreva("Você já possui aulas reservadas para este dia. Por favor, escolha outro.")
			u.aguarde(3000)
		} senao {
			// aluno escolhe até 3 aulas
			alunosatendidos = alunosatendidos + 1
			para(inteiro i = 0; i < 3; i++)
			{
				limpa()
				escreva("Qual o tipo da aula?\n")
				escreva("Digite '0' para Personal\n")
				escreva("Digite '1' para Funcional\n: ")
				leia(tipo)
				
				enquanto(tipo != 1 e tipo != 0)
				{
					limpa()
					escreva("Aula inválida! \nDigite uma opção de aula válida (0/1): ")
					leia(tipo)
				}
				
				se(tipo == 0)
				{
					dias[diaaula][mat]+= 1
					dias[diaaula][30] += 1
					totaulas = totaulas + 1
					fataulas+= 100.0
					valor+= 100.0
					cont++
					escolhidos[0] += 1
				} senao {
					dias[diaaula][mat]+= 1
					dias[diaaula][31] += 1				
					totaulas = totaulas + 1
					fataulas+= 80.0
					valor+= 80.0
					cont++
					escolhidos[1] += 1
				}
							
				se(cont>= 0 e cont< 3)
				{
					limpa()
					escreva("Deseja escolher outra aula?\n")
					escreva("Digite 1 para SIM ou 0 para NÃO: ")
					leia(tipo)
					
					se(tipo == 0)
					{
						pare
					}
				}
			}

			se(cont> 0)
			{
				dias[diaaula][32]+= 1
			}
			
			limpa()
			escreva("Quantidade de aulas de Personal reservadas: ",escolhidos[0],"\n")
			escreva("Quantidade de aulas Funcionais reservadas: ",escolhidos[1],"\n")
			escreva("Total de aulas: ",cont,"\n")
			escreva("Valor a ser pago é R$",valor,"\n\n")
			se((dias[diaaula][32]- 1)> 0)
			{
				escreva("Você terá ",dias[diaaula][32]- 1," colega(s) de treino neste dia.\n")
			}
			escreva("No total, há ",alunosatendidos," aluno(s) nessa academia.")
			u.aguarde(6000)
		}
	}	

	funcao logico verificar_matricula(cadeia codigo)
	{
		para(inteiro i= 0;i< n;i++)
		{
			se(alunos[i][3]== codigo)
			{
				retorne verdadeiro
			}
		}

		retorne falso
	}

	funcao logico calote(inteiro mat, inteiro dia)
	{
		se(dias[dia][mat]> 0)
		{
			retorne verdadeiro
		} senao {
			retorne falso
		}
	}

	funcao faturamento()
	{
    // cálculo do total arrecadado
    arrecadacao = fatmatriculas + fataulas

    escreva("\n------ FATURAMENTO DA ACADEMIA ------\n")
    
    escreva("Número de matrículas realizadas: ", totmatriculas, "\n")
    escreva("Número de aulas personal: ", totaulas, "\n")
    
    escreva("Total faturado com matrículas: R$ ", fatmatriculas, "\n")
    escreva("Total faturado com aulas: R$ ", fataulas, "\n")
    
    escreva("-------------------------------------\n")
    escreva("Total geral arrecadado: R$ ", arrecadacao, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 8964; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */