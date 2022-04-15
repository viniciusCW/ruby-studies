#Objetos em ruby são chamados de 'hash' ou 'dicionários', sua sintaxe é
# { 'key1' => 'value1', 'key2' => 'value2'}
#Para acessar um elemento faz 'hash'['key']

first_hash = { 'a' => 1, 'b' => 2, 'c' => 3}

p first_hash['a']

#No ruby, temos os 'symbols', que são identificadores, mas não são strings,
#os símbolos não precisam de aspas, e tem uma sintaxe exata, que é
# {'syboml1': value1, 'syboml2': value2} ou {:'syboml1' => value1, :'syboml2' => value2}
#Nesse caso, para acessar um elemento faz 'hash'.[:'symbol']

hash = {a: 1, b: 2, c: 3}

p hash[:a]

#Métodos de intereação funcionam em hash também, a diferença é são os argumentos, que são |key, value|

# 'hash'.each do |key, value|
#     'código'
# end

hash.each do |key, value|
    puts "(#{key}, #{value})"
end