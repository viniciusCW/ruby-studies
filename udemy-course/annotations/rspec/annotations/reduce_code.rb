#Cada describe de uma classe define a variável "subject" como sendo uma instância da classe sendo descrita,
#essa variável é o mesmo que fazer o seguinte "let" dentro de um describe:

RSpec.describe Hash do
  let(:subject) { Hash.new }
end

##############################################################################################################################

#Podemos sobrescrever a variável "subject" com um bloco

RSpec.describe Hash do
  subject do
    "valor do subject"
  end
end

#Isso é util pro caso da classe sendo descrita ter um "initialize" com argumentos, então pode instanciar a classe
#com os argumentos que quiser

##############################################################################################################################

#Com o subject, têm-se uma outra variável para poder fazer um "expect" no subject, que é "is_expected", assim dá
#pra fazer um exemplo inline, ele ainda fornece uma descrição do exemplo automaticamente. Exemplo

#it { is_expected.to eq("alguma coisa") }

##############################################################################################################################

#A variável "described_class" é definido como sendo a própria classe que está no describe, assim, fica mais genérico e
#não precisa fazer várias substituições de nomes caso mude o nome da classe.

##############################################################################################################################

