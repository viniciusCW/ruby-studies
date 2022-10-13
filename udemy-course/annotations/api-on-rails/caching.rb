'Caching HTTP tem o objetivo de diminuir o envio de requisições e diminuir os dados enviado por elas'
'Para o primeiro se usa o "Cache-Control" e o segundo o mecanismo de validação ETag ou Last-Modified'
'Tudo isso vai no Header da requisição'

'Cache-Control'
'Vem com um tempo de expiração para que o browser guarde aqueles dados durante esse tempo e não faça outras
requisições pelos mesmos dados ao servidor, ao invés disso, usa esses dados cacheados pelo bronwser'
'Para incluir esse Header basta usar função "expires_in" em que no primeiro argumento vai o tempo de expiração 
desse cache. Ex:'
expires_in 30.seconds, public: true

'ETag'
'Esse Header é enviado para o servidor, na requisição seguinte o servidor devolve 304 (not modified) se
aquele dado não foi modificado, se for modificado o servidor devolve esse dado com uma nova ETag. O cliente
envia o ETag pelo campo "If-None-Match"'
'Para usá-lo no rails basta utilizar a função "fresh_when", porém não funciona com JSON, ao invés disso usá-se o
método "stale?" Para saber se aqueles dados mudaram, aí coda a resposta conforme o caso'
#http://api.rubyonrails.org/v5.1/classes/ActionController/ConditionalGet.html#method-i-stale-3F
'O Last-Modified faz a mesma coisa mas ao invés de usar numeração ele usa data e horas, para olhar o momento das alterações dos dados'

'Por padrão, o Rack já manda ETag nas requisições'