#As funções de "print" no ruby são "puts", "print" e "p". Exemplos

puts "Hello World"
p "Hello World"
print "Hello World"
p 'Esse fica grudado com o "print"'

#A diferença é que "puts" retorna "nil" (que é nulo) e faz formatação (tipo \n, escape e etc) e
#"p" retorna o valor printado e não faz formatação.
#"print" retorna "nil", porém não quebra a linha para os próximos prints nem
#antes de printar como "p" e "puts" faz

print "Hello World"
puts "Hello World"
p "Hello World"

#########################################################################################

#Para descobrir o tipo de dado faz 'dado'.class

puts "\n"
p "aaaa".class
p 123.class
p 1.0.class
p [1, 2, 'a',['b', 3]].class

#########################################################################################

#Para ver os métodos faz 'dado'.methods

p "aaaa".methods

#########################################################################################

#Para pegar input do usuário usa-se a função 'gets', porém, essa função formata o input do usuário para
#{ " 'input_do_user'\n "}, para não ter essa formatação usamos 'gets.chomp'

puts "Coloque um input para a função \"gets\""
input_with_gets = gets

p input_with_gets

puts "Coloque um input para o método \"gets.chomp\""
input_with_chomp = gets.chomp

p input_with_chomp

#########################################################################################
