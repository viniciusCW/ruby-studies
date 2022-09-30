"Tem q gerar arquivo de migração para criar uma tabela:

rails generate migration create_'nome_da_tabela'

E então será criado um diretório db\migrate e um arquivo dentro dele"

###############################################################################

"Há uma convenção de como nomear algumas coisas, a convenção é a seguinte

Model name: article

Class name: Article -> Capitalized A and singular, CamelCase

File name: article.rb -> singular and all lowercase, snake_case

Table name: articles -> plural of model name and all lowercase
"
###############################################################################

"No arquivo criado em db\migrate, vai ter um método no qual podemos colocar o código
para a criação de tabelas que poderá ser executado, basta adicionar esse tipo de linha

def change
  create_table :articles do |t|
    t.'tipo de dado' :'nome_da_coluna1'
    t.'tipo de dado' :'nome_da_coluna2'
    ...
    t.timestamps
  end
"


