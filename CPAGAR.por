programa {
  cadeia dados[3][10]
  funcao inicio() {

  cadeia data_emissao, docto, data_vcto, data_pagto, cnpj_fornec, nome_fornec 
  real valor,valor_pago, juros, multa
  
  
  escreva("Qual a data de emissao do título?\n")
  leia(data_emissao)
  escreva("Qual o nr do Título?\n") 
  leia(docto)
  escreva("Qual a data de vencimento?\n")
  leia(data_vcto)
  escreva("data de pagto?\n")
  leia(data_pagto)
  escreva("Qual o Cnpj do Fornecedor?\n")
  leia(cnpj_fornec)
  escreva("Qual o nome do fornecedor?\n")
  leia(nome_fornec)
  escreva("Qual o valor do documento?\n")
  leia(valor)
  escreva("Valor de Juros\n")
  leia(juros)
  escreva("Valor de Multa\n")
  leia(multa)
  escreva("qual o valor pago?\n")
  leia(valor_pago)
  
  /*leia(docto)
  leia(data_vcto)
  leia(data_pagto)
  leia(cnpj_fornec)
  leia(nome_fornec)*/
  dados[0][0] = data_emissao
  dados[0][1] = data_vcto
  dados[0][2] = docto
  dados[0][3] = data_pagto
  dados[0][4] = cnpj_fornec
  dados[0][5] = nome_fornec
  dados[0][6] = valor
  dados[0][7] = juros
  dados[0][8] = multa
  dados[0][9] = valor_pago
  /*escreva("Qual o nr do Título?\n") 
  leia(docto)
  escreva("Qual a data de vencimento?\n")
  leia(data_vcto)
  escreva("Qual o Cnpj do Fornecedor?\n")
  leia(cnpj_fornec)
  escreva("Qual o nome do fornecedor?\n")
  leia(nome_fornec)
  escreva("Qual o valor do documento?\n")
  leia(valor)
  escreva("qual o valor pago?\n")
  leia(data_emissao)
  escreva("Foi pago no prazo?\n")
  leia(data_emissao)
  escreva("Valor de Juros\n")
  leia(data_emissao)
  escreva("Valor de Multa\n")
  leia(data_emissao)*/

    /* para(inteiro i =0; i<3;i++){
     	
     para(inteiro c= 0; c<6; c++){
	     	
	     	
	     	}
     }*/
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 140; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */