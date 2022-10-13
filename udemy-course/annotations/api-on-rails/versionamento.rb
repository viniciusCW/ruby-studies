"Formas de versionamento"

'Query Parameter -> a versão vai no params da url. Ex: http//localhost/user?version=1'
'Assim pode-se usar esse parâmetro de forma "hardcoded" nas controllers, mas é um jeito ruim.
Ou podemos versionar os controllers, para fazer isso, é só criar um módulo para a versão, dentro desse módulo
coloca as controllers e dentro de "controllers" coloca diretórios para cada versão com as
controllers lá dentro, aí em rotas faz um escopo de rotas para cada versão e adiciona uma constraint as r por exemplo'

scope module: "version1" do
  resource :users, :constraints => lambda { |request| request.params[:version] == "1" }
end

'Pelo HTTP Header -> a versão vai no Header, num campo personalizado ou complementando o prórpio campo "Accept". Exs:
Accept: application/json; version=1.0
X-Version: 1.0'
'Esse método funciona para as controllers versionadas e a diferença é só que a versão é obtida no header ao invés
de ser obtida num parâmetro'


'subdomínio -> faz um subdomínio para cada versão. Ex: http//v1.localhost'
'Nesse caso, tem que editar o arquivo "Hosts" para o enderço local apontar para esse endereços e para usá-los
no rails, usa um bloco de "constraints" especificando o subdomínio. Ex:'

constraints subdomain: 'v1' do #subdomínio v1.localhost
  scope module: 'v1' do #especifica o módulo que contém as controllers versionadas
    resources :users
  end
end

'Segmento de URL -> a versão vai no início do path da url. Ex: http//localhost/v1/user'
'Esse pode ser feito manualmente nas rotas utilizando "scope" e os módulos com controllers versionadas'

'Obs:
Dá pra versionar os serializers da mesma forma que as controllers, não é preciso fazer nada além disso
para o versionamento todo funcionar com esses serializers'
