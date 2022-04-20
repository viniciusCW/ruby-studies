#Para cria um projeto rails usa-se o comando

#rails new 'nome do projeto'

#E então será criado um diretório na pasta atual em que conterá o projeto

#O projeto é criado com uma estrutura padrão de diretórios

"config\routes.rb é definido as rotas, em cada rota especifica qual método
de qual arquivo do diretório app\controllers será executado, então em routes a sintaxe é

'rota' 'controller#action'

Obs: 'controller' é o nome do arquivo e 'action' é o método a ser executado"

################################################################################################

"Para criar um novo 'controller', vai no terminal e faz:

rails generate controller 'nome_do_controller'

em app\views será criado uma pasta com o nome do controller criado,
e dentro dessa pasta se cria páginas no formato .html.erb, o nome
do arquivo deve ser o mesmo nome do método que será usado no controller"

################################################################################################


"Para adcionar uma rota, tem que ir no config\routes.rb, e adicionar na classe o seguinte

'método_http' 'rota', to: 'controller#action'
"

################################################################################################



"rails generate scaffold 'Resource (que vai ser o nome da tabela)' 'coluna1':'tipo_de_dado' 'coluna2':'tipo_de_dado' ... "

"isso vai criar uma pasta chamada migrate dentro da pasta db, onde vai ter um arquivo com a classe que cria as tabelas e vai criar um
controller pra essa tabela lá no diretório app\controllers, cria um arquivo em app\models e adiciona uma linha
de código em routes.rb (que cria as rotas automaticamente), adiciona uma pasta com o nome da tabela em views que vai conter umas páginas prontas"

"Para criar as tabelas tem q rodar o seguinte comando no terminal

rails db:migrate

dessa forma será criado os arquivos schema.rb e seeds.rb na pasta db"


