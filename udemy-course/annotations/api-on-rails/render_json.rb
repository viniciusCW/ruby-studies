'O método "render" transforma um objeto em JSON para responder a uma requisição fazendo'

render json: {hash: 'hash'}

'Esse método tem algumas opções'

'#root - (booleano) false por padrão, se colocar pra true, ele tira os dados da raíz da resposta,
por exemplo, se a resposta para "root false" for'
{name: "name"}
'ao setar root: true, a resposta vai ser tipo'
{contact: {name: "name"}}

'#only - (array de hashes) Define quais os atributos ou chaves serão retornados. Ex:'
render json: {hash: 'hash', name: 'name'}, only: [:hash]
'dessa forma, a resposta vai conter apenas a chave "hash" dos dados'

'#except - (array de hashes) Define as chaves que não serão retornadas, apenas as outras chaves serão retornadas.
Ex:'
render json: {hash: 'hash', name: 'name'}, except: [:name]
'dessa forma, a resposta vai conter apenas a chave "hash" dos dados'

'#methods - (array de symbols ou um symbol) Pode ser usado para incluir uma chave nos dados da resposta, o parâmetro deve
ser o nome do método na model do recurso que retorne o valor dessa chave Ex:'
'método na model'
def test
  "test"
end
'então'
render json: {hash: 'hash'}, methods: :test
'a resposta será'
{hash: 'hash', test: "test"}

'#include - (hash ou um symbol) Inclui o dado de alguma key estrangeira, no caso de uma tabela ter um "belongs_to"
em relação a outra, o parâmetro deve estar no singular, se for "has_many" o parâmetro tem que estar no plural.
O parâmetro pode ser uma hash com suas próprias opções também. Ex:'
'Suponha que temos esse dado numa tabela'
{description_id: 1, description: 'descricao', test: 'test'}
'e'
render json: {hash: 'hash', description_id: 1}, include: { description: { only: :description } }
'a resposta será'
{hash: 'hash', description: { description: 'descricao' }}