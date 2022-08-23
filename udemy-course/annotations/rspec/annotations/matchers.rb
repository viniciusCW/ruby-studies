#expect é o método que recebe um argumento e através dele fazemos os "matchers"

#primeiro temos o método "to" para então chamar algum "matcher" como o "eq"
#E temos o método "to_not" ou "not_to" que recebe um matcher também, porém esse método é a negação do método "to"

RSpec.describe "matchers" do
  it "example" do
    expect(1).to eq(1)
    expect(1).to_not eq(2)
  end
end

#Principais matchers

#eq - Verifica igualdade de valores
#eql - Verifica igualdade de valor e classe
#equal, be - verifica identidade (se são os mesmos objetos na memória)
#be <x> - onde <x> é algum operador de comparação, esse método vai testar essa comparação
#all(<matcher>) - Testa se todos os elementos de um array satisfazem ao <matcher>
#be_truthy, be_falsy, be_nil - verifica se é "truthy", "falsy" ou nil
#contain_exactly(arg1, arg2, ...) - verifica se um array contém os elementos passados arg1, arg2, ... sem levar em conta a ordem dos elementos
#start_with(arg1, arg2 )/end_with(arg1, arg2 ) - verifica se uma string começa/termina com uma substring ou se uma array começa/termina com aqueles elementos
#have_attributes(<hash>) - testa se o hash tem os pares key-values do argumento <hash>
#include(arg1, arg2, ...) - verifica se o objeto passado inclui arg1, arg2, ..., serve para string, elementos de array, keys e pares key-values
#respond_to(arg1, arg2, ...) - testa se o objeto responde ao métodos arg1, arg2, ..., esses parâmetros são os nomes dos métodos e devem ser símbolos
#respond_to(<método>).with(<qtde argumentos>).arguments - testa se o objeto responde ao método <método> e se esse método tem a quantidade de <qtde argumentos>
#satisfy { <teste> } ou satisfy("mensagem de erro do teste") { <teste> } - permite fazer um teste personalizado <teste> que deve retornar um valor booleano

###########################################################################################################################################

#Predicate matchers
#be_<predicate method> - onde <predicate method> é o nome do método do tipo predicate a ser testado, funciona com todos os predicate methods

###########################################################################################################################################

#Change matcher
#Serve para testar se algo muda após executar um bloco de código

#expect { <código> }.to change{ <o que será alterado> }.<método para testar mudança>

#O método change tem seus métodos de teste assim como o método ".to"

###########################################################################################################################################

#raise_error

#Testa se um bloco de código dá um erro

#expect { <código> }.to raise_error(<Classe do erro>)

#É opcional (mas recomendável) passar o parâmetro <Classe do erro>

###########################################################################################################################################

#composição de expect

#É possível compor testes, de forma geral fica assim

#expect( <objeto> ).to <teste>.<composição> <outro teste>.<composição> ...

#onde <teste> é algum matcher que se queira testar e <composição> é "and" ou "or". Assim o teste é composto
