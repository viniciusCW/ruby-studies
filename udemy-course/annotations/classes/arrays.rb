#Arrays são definidos por colchetes: ['item1', 'item2', ...]
#printar array com 'puts' faz com que seja printado um elemento por linha,
#os outros métodos de print, printam o próprio array

a = [1, 2, 3]

puts a
p a

#range é feito da seguinte forma: 'n1..n2'
#assim é feito um range que começa em 'n1' e termina em 'n2' (funciona com o alfabeto).
#Para transformá-lo em array, usa o método to_a
puts "\n"
range = 1..10

p range
p range.to_a

#Para acessar um dado de array faz 'array'['índice']
#Métodos úteis:
#Add elemento no final do array: 'array' << 'element' ou 'array'.append('element')
#Add elemento no início do array: 'array'.unshift('element')
#Tirar e retornar o últmo elemento do array: 'array'.pop
#Saber se o array contém um dado elemento: 'array'.include?('element')
#Colocar os elementos numa string: 'array'.join('carctere_para_a_união')
#E de string pra array faz: 'array'.split('caractere_de_divisão')

#Método "for each" do ruby:

# 'array'.each do |'element_names_choosed'|
#     'código'
# end
puts "\n"
a.each do |element|
    p element
end

#Método "filter" ou de filtrar arrays do ruby é o método 'select':

b = [1, 2, 3, 4, 5]

b_odds = b.select do |number|
            number.odd?
        end

p b_odds
