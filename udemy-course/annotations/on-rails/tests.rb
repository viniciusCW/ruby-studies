"Os testes ficam dentro do diretório 'test', existe um padrão para o nome dos arquivos que é:

  'nome_da_classe/model/controller...'_test.rb

Uma classe de teste é declarado da seguinte forma

class 'NomedaClasse'Test < 'Classe adequada de teste'
  'testes'
end

Para definir um teste faz:

 test 'string com descrição do teste' do
   'testes'
 end

Os testes devem ter seus 'asserts' que são os resultados esperados
"

#####################################################################################################

"Um método chamado 'setup' pode ser definido para fazer algo que seja usado em vários teste da classe,
esse método será executado antes de cada teste.
"

#####################################################################################################

"Comando para gerar teste das rotas restful's automaticamente

rails generate test_unit:scaffold 'nome da model'

Comando para gerar um arquivo de teste

rails generate 'tipo de teste'_test 'nome_do_teste'
"
