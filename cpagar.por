programa
{
	//https://github.com/UNIVALI-LITE-BACKUP/Portugol-Studio-Recursos/tree/master/exemplos/bibliotecas/arquivos
	inclua biblioteca Arquivos --> a 
	//Agenda Telefônica
	//Desenvolva um programa que funcione como uma agenda telefônica
	//Permita ao usuário adicionar, editar e excluir contatos com nome, telefone , endereço
	const cadeia CAMINHO =  "./bd.txt"
     cadeia cpagar[4][8]
     //problema só está inserindo um aquivo por vez
     funcao inserir(){
        limpa()
        inteiro arquivo = a.abrir_arquivo(CAMINHO, a.MODO_ACRESCENTAR)
        cadeia dtdocto ,dtvcto ,dtpgto, vldocto ,vljur ,vlmulta ,vldesc ,vltot
	         escreva("\nEscreva a data do documento:\n")
     	    leia(dtdocto)
     	    escreva("Escreva a data de vencimento:\n")
     	    leia(dtvcto)
     	    escreva("\nEscreva a data do pagamento:\n")
     	    leia(dtpgto)
     	    escreva("\nEscreva o valor do documento:\n")
     	    leia(vldocto)
     	    escreva("\nEscreva o valor de juros:\n")
     	    leia(vljur)
     	    escreva("\nEscreva o valor da multa:\n")
     	    leia(vlmulta)
     	    escreva("\nEscreva o valor do desconto:\n")
     	    leia(vldesc)
     	    escreva("\nEscreva o valor total:\n")
     	    leia(vltot)

            
	        a.escrever_linha(dtdocto, arquivo)
	        a.escrever_linha(dtvcto, arquivo)
	        a.escrever_linha(dtpgto, arquivo)
	        a.escrever_linha(vldocto, arquivo)
	        a.escrever_linha(vljur, arquivo)
	        a.escrever_linha(vlmulta, arquivo)
	        a.escrever_linha(vldesc, arquivo)
	        a.escrever_linha(vltot, arquivo)
	        a.fechar_arquivo(arquivo)
	        listar()
	           cpagarPreenchido()
     	   opcoes()
     	}
// só lista uma única linha
    funcao listar(){
	 limpa()
	 inteiro linha = 1
	 cadeia separacao = "------------------------------\n"
	 inteiro arquivo = a.abrir_arquivo(CAMINHO, a.MODO_LEITURA)
	 escreva("---------Lançamento------------\n")
	 enquanto( nao a.fim_arquivo(arquivo)){
	   escreva(a.ler_linha(arquivo),"\n")
	   se(linha == 8){
	     escreva(separacao)
	     linha = 0
	   }
	   linha ++
	 //  escreva(linha)
	 }
	 a.fechar_arquivo(arquivo)
    }

    funcao cpagarPreenchido(){
    	 inteiro arquivo = a.abrir_arquivo(CAMINHO, a.MODO_LEITURA)
	 enquanto( a.fim_arquivo(arquivo)){
	 	escreva("fimdoarquivo")
	   para(inteiro i =0; i<4;i++){
	     para(inteiro c= 0; c<8; c++){
	     	cpagar[i][c] = a.ler_linha(arquivo)
	escreva("i",i,"c",c,"\n")
	     }
	   }	
	 }
	 a.fechar_arquivo(arquivo)
	 opcoes()
    }
	     
     funcao editar(){  
         cadeia pesquisa , substituto 
         inteiro arquivo = a.abrir_arquivo(CAMINHO, a.MODO_ESCRITA)
         escreva("Digite o nome para editar os dados\n")
         leia(pesquisa)
         escreva("Digite o nome  correto\n")
         leia(substituto)
         a.substituir_texto(CAMINHO, pesquisa, substituto, verdadeiro)

	    a.fechar_arquivo(arquivo)
	    escreva("Alterado com Sucesso")
	    cpagarPreenchido()
	    opcoes()
     }

    funcao remover(){
         cadeia pesquisa 
         inteiro arquivo = a.abrir_arquivo(CAMINHO, a.MODO_ESCRITA)
         escreva("Digite o nome para editar os dados\n")
         leia(pesquisa)
         escreva("Digite o numero correto\n")
         a.substituir_texto(CAMINHO, pesquisa, " ", verdadeiro)
	    a.fechar_arquivo(arquivo)
	    escreva("Alterado com Sucesso")
	    listar()
	    opcoes()
     }

   funcao  sair(){
   	 escreva("Até mais .....")
   	}
     
   funcao opcoes(){

	cadeia dtdocto ,dtvcto ,dtpgto, vldocto ,vljur ,vlmulta, vldesc, vltot
	inteiro opcao

	     escreva("MENU DE OPÇÕES:\n")
	     escreva("1) Adicionar Contato\n")
	     escreva("2) Listar os Contatos\n")
	     escreva("3) Editar Contato\n")
	     escreva("4) Remover Nome\n")
	     escreva("0) Sair\n")
	     escreva("Escolha sua Opção:\n")
	     leia(opcao)
	     
	     escolha(opcao){
	     	caso 1: inserir() pare
	     	    
	     caso 2:
	     	listar() pare

	     caso 3:
	     	editar()
	     	pare
	     	
	     caso 4:remover() pare
	     caso contrario:sair() pare
	     }
	}

	funcao inicio(){
		//cpagarPreenchido()
	     opcoes()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2130; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */