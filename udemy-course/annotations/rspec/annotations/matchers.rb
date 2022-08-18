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

#Predicate matchers
#be_<predicate method> - onde <predicate method> é o nome do método do tipo predicate a ser testado, funciona com todos os predicate methods
