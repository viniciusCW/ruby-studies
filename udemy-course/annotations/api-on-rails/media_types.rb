"Media type é uma string que define qual o formato do dado e como ele deve ser lido. Exs:
application/json
application/xml
text/html
"

'Para informar o media type, enviamos no campo "Accept" do header'

'Uma forma de filtrar requisições por esse campo é adicionar um método na controller_aplication que faça
esse filtro'