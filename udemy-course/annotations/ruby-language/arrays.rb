"Arrays são definidos por colchetes: ['item1', 'item2', ...]
printar array com 'puts' faz com que seja printado um elemento por linha,
os outros métodos de print, printam o próprio array"

a = [1, 2, 3]

puts a
p a

"Tem dois 'range' no Ruby"
"O primeiro é da seguinte forma: 'n1..n2'
assim é feito um range que começa em 'n1' e termina em 'n2' (funciona com o alfabeto).
O outro é da forma: 'n1...n2', a diferença é q ele termina em 'n2-1'.
Para transformá-lo em array, usa o método to_a"
puts "\n"

range = 1..10

p range
p range.to_a

range = 1...10

p range
p range.to_a

"Para acessar um dado de array faz 'array'['índice']
Métodos úteis:
Add elemento no final do array: 'array' << 'element' ou 'array'.append('element') ou 'array'.push('element')
Add elemento no início do array: 'array'.unshift('element')
Tirar e retornar o últmo elemento do array: 'array'.pop
Para deletar elementos do array de um certo valor: 'array'.delete('valor') (deleta todas as entradas iguais a 'valor')
Para deletar algum elemento do array pelo índice: 'array'.delete_at('índice')
Saber se o array contém um dado elemento: 'array'.include?('element')
Colocar os elementos numa string: 'array'.join('carctere_para_a_união')
E de string pra array faz: 'array'.split('caractere_de_divisão')"

"Método 'for each' do ruby:"

# 'array'.each do |'element_name'|
#     'código'
# end
puts "\n"

a.each do |element|
    p element
end

"Notação inline para loops em interáveis é da seguiunte forma:"

# 'array'.each { |'element_name'| 'código'}

"Método 'filter' ou de filtrar arrays do ruby é o método 'select':"

b = [1, 2, 3, 4, 5]

b_odds = b.select do |number|
            number.odd?
        end

p b_odds
