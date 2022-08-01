#Um bloco de testes (ou exemplos, como também é chamado no RSpec) é da seguinte forma

RSpec.describe "alguma descrição que indique a classe, feature, ou método que será testado, pode ser uma classe ou hash tbm" do
  it "um bloco com assertions de algum método, aqui deve descrever oq se deve ter com esse teste" do
    #assertions
  end
end

##################################################################################################################################

#O método before pode ser usado para especificar tarefas antes de uma determinada coisa rodar, exemplo:

RSpec.describe "class" do
  before do
    before(:example) do
      "O que deve ser feito antes de cada exemplo"
    end
  end
end

##################################################################################################################################

#Para definir variáveis que serão usadas ao longo dos testes, deve-se usar variáveis de instância (@variavel)

##################################################################################################################################

#O método "let" é usado para definir uma variável que pode ser usada em cada exemplo

RSpec.describe "class" do
  let(:variavel) {
    #alguma ação ou instância de classe e etc
  }

  it "test" do
    #aqui pode-se chamar a "variavel" definida no let
  end
end

#O let é lido antes de cada teste, memoriza o seu valor em cada teste e só é executado quando necessário
#Inclusive, pode-se usar uma variável definida por um "let" dentro de um bloco de outro "let"
#O método "let!" é semelhante ao método "before"

##############################################################################################################################

#Para fazer uma mensagem de erro personalizada, basta adicionar a mensagem como segundo parâmetro do método "to"

RSpec.describe "class" do
  it "describe" do
    expect(1+1).to eq(2), "Mensagem de erro"
  end
end

##############################################################################################################################
