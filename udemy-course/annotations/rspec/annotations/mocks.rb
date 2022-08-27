#O método "double" serve para simular um objeto ou uma instância de uma classe, com os nomes dos métodos e o que devem retornar

#double("identifica o double", {method1: return value, method2: return value2, ...})

##################################################################################################################################################

#Receive counts

#Tem como testar a quantidade de vezes que um método é chamado

#expect( <objeto ou double> ).to receive(:<método>).<count>

#onde <count> é o método que determina a quantidade de chamadas a ser testadas, principais deles são

#once - testa se o método é chamado apenas uma vez
#twice - testa se o método é chamado duas vezes
#exactly(x).times - testa se foi chamado x vezes
#at_most(x).times - se foi chamado até no máximo x vezes
#at_least(x).times - se foi chamado pelo menos x vezes

##################################################################################################################################################

#Para mockar métodos de um objeto ou classe faz

#allow( <objeto ou classe> ).to receive(:<método>).and_return(<valor de retorno>)

#O método ".and_return" pode receber mais de um parâmetro, assim, cada parâmetro será usado conforme o método é chamado, então se temos

#allow( <objeto ou classe> ).to receive(:<método>).and_return(arg1, arg2, ...)

#Na primeira chamada do <método>, ele vai retorna arg1, na segunda chamada ele vai retorna arg2 e assim sucessivamente, até o último parâmetro,
#que será retornado para o resto das chamadas

##################################################################################################################################################

#Podemos mockar métodos com argumentos também e determinar o que o método deve retornar conforme o parâmetro recebido

#allow( <objeto ou classe> ).to receive(:<método>).with(<args>).and_return(<valor de retorno>)

#Onde <args> pode ser "no_args" para tratar do método ser chamado sem argumentos, "any_args" para quaisquer parâmetros ou pode ser os parâmetros
#para os quais queiramos que o método retorne o <valor de retorno>. Pode ser até um matcher.

#Há várias opções para <args>, mostrados na referência
#https://relishapp.com/rspec/rspec-mocks/v/3-8/docs/setting-constraints/matching-arguments

##################################################################################################################################################

#Verficando se o double se comporta igual a classe que se quer "dublar"
#https://relishapp.com/rspec/rspec-mocks/v/3-8/docs/verifying-doubles

##################################################################################################################################################

#Class double para dar stub em classes
#https://relishapp.com/rspec/rspec-mocks/v/3-8/docs/verifying-doubles/using-a-class-double

##################################################################################################################################################

#Spies são como o double, mas não se define os métodos ao definir o spy, ele é capaz de receber qualquer método

#https://relishapp.com/rspec/rspec-mocks/v/3-8/docs/basics/spies
